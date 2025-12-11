use std::env;
use std::fs;
use std::path::{Path, PathBuf};

fn main() {
    // ----------------------------
    // 1. Determine output filename
    // ----------------------------
    // cdylib names differ per target:
    // Linux:   librust_hello.so
    // macOS:   librust_hello.dylib
    // Windows: rust_hello.dll

    let crate_name = env::var("CARGO_PKG_NAME").unwrap();
    let target = env::var("TARGET").unwrap();

    let lib_filename = if target.contains("windows") {
        format!("{}.dll", crate_name)
    } else if target.contains("apple") {
        format!("lib{}.dylib", crate_name)
    } else {
        // Linux / Unix default
        format!("lib{}.so", crate_name)
    };

    // cargo tells us where the compiled artifact lives
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());
    let source_path = out_dir.join(&lib_filename);

    // Cargo may generate multiple "OUT_DIR" subdirectories.
    // We retry until the file actually exists.
    let lib_path = find_built_lib(&source_path, &lib_filename);

    // ----------------------------------------------
    // 2. Determine install destination
    // ----------------------------------------------
    // Preferred: THUNDER_LIB_INSTALL_DIR
    // Fallback:  ../../install/lib relative to crate

    let install_dir = env::var("THUNDER_LIB_INSTALL_DIR")
        .map(PathBuf::from)
        .unwrap_or_else(|_| {
            // Crate dir = directory containing Cargo.toml
            let crate_dir = PathBuf::from(env::var("CARGO_MANIFEST_DIR").unwrap());
            crate_dir.join("../../install/lib")
        });

    if !install_dir.exists() {
        fs::create_dir_all(&install_dir)
            .expect("Failed to create Thunder install/lib directory");
    }

    let dest_path = install_dir.join(&lib_filename);

    // ----------------------------------------------
    // 3. Copy the built library into Thunder install
    // ----------------------------------------------
    println!("cargo:warning=Copying {} → {}", lib_path.display(), dest_path.display());
    fs::copy(&lib_path, &dest_path)
        .expect("Failed to copy shared library into Thunder install directory");
}

// ----------------------------------------------------------------------
// Locate the built .so/.dylib reliably (Cargo nests OUT_DIR deeply).
// ----------------------------------------------------------------------
fn find_built_lib(start_path: &Path, filename: &str) -> PathBuf {
    if start_path.exists() {
        return start_path.to_owned();
    }

    // If the immediate file doesn't exist, search upward from OUT_DIR
    let mut dir = start_path.parent().unwrap().to_owned();

    for _ in 0..5 {
        let candidate = dir.join(filename);
        if candidate.exists() {
            return candidate;
        }
        if !dir.pop() {
            break;
        }
    }

    panic!(
        "Could not locate built library '{}' in OUT_DIR hierarchy",
        filename
    );
}
