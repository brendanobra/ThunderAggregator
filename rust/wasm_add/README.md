# wasm_add

Minimal Rust -> WASM library exporting a bare `add` function.

## Build

```bash
cargo build --release --target wasm32-unknown-unknown
```

The resulting module is at:

```
target/wasm32-unknown-unknown/release/wasm_add.wasm
```

You can point the Thunder `rust_hello` loader at it with:

```bash
export RUST_HELLO_WASM_PATH="/home/brendan/GITROOT/ThunderAggregator/rust/wasm_add/target/wasm32-unknown-unknown/release/wasm_add.wasm"
```

Then call the `wasm_add` or `wasm_add_args` JSON-RPC methods on the RustHello plugin.
