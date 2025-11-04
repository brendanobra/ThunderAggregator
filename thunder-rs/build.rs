use std::{
    env, fs,
    path::{Path, PathBuf},
};

fn main() {
    // Where your generated C headers live
    let headers_dir = PathBuf::from("../install/usr/include/Thunder/com");

    // Make cargo rebuild if headers change
    println!("cargo:rerun-if-changed={}", headers_dir.display());

    // Optional: add include paths Thunder headers depend on
    // let clang_args = vec!["-I/path/to/deps/include", "-DMY_FEATURE=1"];

    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());
    let bindings_dir = out_dir.join("bindings");
    fs::create_dir_all(&bindings_dir).unwrap();

    let mut mods = Vec::new();

    for entry in fs::read_dir(&headers_dir).unwrap() {
        let entry = entry.unwrap();
        let path = entry.path();
        if path.extension().and_then(|s| s.to_str()) != Some("h") {
            continue;
        }

        let stem = path.file_stem().unwrap().to_string_lossy().to_string();
        let out_file = bindings_dir.join(format!("{stem}.rs"));
        let clang_args: Vec<String> = vec![];
        // Configure bindgen
        let mut builder = bindgen::Builder::default()
            .header(path.to_string_lossy())
            .allowlist_file(".*") // keep everything from this header & its includes
            .layout_tests(false) // avoid failing on packed/odd layouts
            .derive_default(true)
            .generate_inline_functions(true);
        if !clang_args.is_empty() {
            // &Vec<String> works because &String: AsRef<str>
            builder = builder.clang_args(&clang_args);
        }

        // If your headers rely on specific defines/flags, add them above via .clang_args([...])

        let bindings = builder.generate().expect("bindgen failed");
        bindings
            .write_to_file(&out_file)
            .unwrap_or_else(|_| panic!("Failed to write {:?}", out_file));

        mods.push(stem);
    }

    // Emit a file listing modules we can include!() from src/lib.rs
    let modlist = bindings_dir.join("modlist.rs");
    let mut contents = String::new();
    for m in mods {
        contents.push_str(&format!(
            "pub mod {m} {{ include!(concat!(env!(\"OUT_DIR\"), \"/bindings/{m}.rs\")); }}\n"
        ));
    }
    fs::write(modlist, contents).unwrap();
}
