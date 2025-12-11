use std::ffi::c_char;
use std::ptr;
use std::slice;

use wasmtime::{Engine, Module, Store, Instance};
use std::fs;
use std::path::Path;


// ==========================
// C ABI helpers
// ==========================

fn write_str_to_buf(s: &str, buf: *mut c_char, len: usize) {
    if buf.is_null() || len == 0 {
        return;
    }

    let bytes = s.as_bytes();
    let max = len.saturating_sub(1); // leave room for '\0'
    let to_copy = bytes.len().min(max);

    unsafe {
        let dst = slice::from_raw_parts_mut(buf as *mut u8, len);
        ptr::write_bytes(dst.as_mut_ptr(), 0, len); // zero buffer
        dst[..to_copy].copy_from_slice(&bytes[..to_copy]);
        // last byte stays 0, so we’re null-terminated
    }
}

static HELLO_MSG: &str = "Hello from Rust 👋";

#[no_mangle]
pub extern "C" fn rust_hello(buf: *mut c_char, len: usize) {
    write_str_to_buf(HELLO_MSG, buf, len);
}

// ==========================
// Abstraction: WasmEngine
// ==========================

pub trait WasmEngine {
    fn add(&mut self, a: i32, b: i32) -> Result<i32, String>;
}

// ---- Wasmtime implementation (current engine) ----

struct WasmtimeEngine {
    engine: Engine,
    module: Module,
}
fn wasm_path() -> String {
    // Env override: RUST_HELLO_WASM_PATH
    if let Ok(val) = std::env::var("RUST_HELLO_WASM_PATH") {
        if !val.trim().is_empty() {
            return val;
        }
    }

    // Default fallback
    "/thunder_root/install/share/rust_hello/add.wasm".into()
}

impl WasmtimeEngine {
       fn new_for_add() -> Result<Self, String> {
        // If the .wasm file exists, read it.
        // If not, generate it from WAT and write it to disk once.
        let full_path = wasm_path();
        let path = Path::new(&full_path);


        let wasm_bytes = if path.exists() {
            fs::read(path).map_err(|e| format!("Failed to read {}: {}", full_path, e))?
        } else {
            // Same WAT as before
            let wat_src = r#"
                (module
                  (func $add (export "add") (param i32 i32) (result i32)
                    local.get 0
                    local.get 1
                    i32.add))
            "#;

            let bytes = wat::parse_str(wat_src).map_err(|e| e.to_string())?;

            if let Some(parent) = path.parent() {
                if !parent.exists() {
                    fs::create_dir_all(parent)
                        .map_err(|e| format!("Failed to create dir {}: {}", parent.display(), e))?;
                }
            }

            fs::write(path, &bytes)
                .map_err(|e| format!("Failed to write {}: {}", full_path, e))?;

            bytes
        };

        let engine = Engine::default();
        let module = Module::new(&engine, &wasm_bytes).map_err(|e| e.to_string())?;

        Ok(Self { engine, module })
    }
}

impl WasmEngine for WasmtimeEngine {
    fn add(&mut self, a: i32, b: i32) -> Result<i32, String> {
        let mut store = Store::new(&self.engine, ());
        let instance = Instance::new(&mut store, &self.module, &[])
            .map_err(|e| e.to_string())?;

        let add = instance
            .get_typed_func::<(i32, i32), i32>(&mut store, "add")
            .map_err(|e| e.to_string())?;

        let result = add
            .call(&mut store, (a, b))
            .map_err(|e| e.to_string())?;

        Ok(result)
    }
}

// Generic helper: all callers only know about the trait
fn wasm_add_with_engine<E: WasmEngine>(engine: &mut E) -> Result<i32, String> {
    engine.add(1, 2)
}

// ==========================
// C ABI: wasm_add via engine
// ==========================

#[no_mangle]
pub extern "C" fn rust_wasm_add(buf: *mut c_char, len: usize) {
    // Today: WasmtimeEngine
    // Future: swap this for Wasm3Engine / WamrEngine, same trait
    let result_msg = match WasmtimeEngine::new_for_add()
        .and_then(|mut eng| wasm_add_with_engine(&mut eng))
    {
        Ok(v) => format!("WASM add(1,2) = {}", v),
        Err(e) => format!("WASM error: {}", e),
    };

    write_str_to_buf(&result_msg, buf, len);
}
