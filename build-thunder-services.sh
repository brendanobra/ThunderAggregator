#!/bin/sh
set -e

if [ -z "${THUNDER_ROOT}" ]; then
    echo "THUNDER_ROOT is not set. Export THUNDER_ROOT=/path/to/thunder_root first."
    exit 1
fi

cd "${THUNDER_ROOT}"

# 1) Build the Rust FFI library first
RUST_CRATE_DIR="${THUNDER_ROOT}/rust/rust_hello"
RUST_TARGET_SO="${RUST_CRATE_DIR}/target/release/librust_hello.so"

echo "==> Building Rust FFI crate at ${RUST_CRATE_DIR}"
cargo build --release --manifest-path "${RUST_CRATE_DIR}/Cargo.toml"

if [ ! -f "${RUST_TARGET_SO}" ]; then
    echo "ERROR: Rust shared library not found at:"
    echo "  ${RUST_TARGET_SO}"
    echo "Did the crate build succeed and is crate-type = \"cdylib\"?"
    exit 1
fi

echo "==> Using Rust shared library: ${RUST_TARGET_SO}"

# 2) Configure ThunderNanoServices with the correct RUSTHELLO_SO path
cmake -G Ninja \
  -S "${THUNDER_ROOT}/ThunderNanoServices" \
  -B "${THUNDER_ROOT}/build/ThunderNanoServices" \
  -DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install" \
  -DPLUGIN_COMMANDER=ON \
  -DPLUGIN_DIALSERVER=ON \
  -DPLUGIN_DICTIONARY=ON \
  -DPLUGIN_FILETRANSFER=ON \
  -DPLUGIN_INPUTSWITCH=ON \
  -DPLUGIN_PROCESSMONITOR=ON \
  -DPLUGIN_RESOURCEMONITOR=ON \
  -DPLUGIN_SYSTEMCOMMANDS=ON \
  -DPLUGIN_SWITCHBOARD=ON \
  -DPLUGIN_WEBPROXY=ON \
  -DPLUGIN_WEBSHELL=ON \
  -DPLUGIN_RUSTHELLO=ON \
  -DRUSTHELLO_SO="${RUST_TARGET_SO}"

# 3) Build and install NanoServices (including RustHello)
cmake --build "${THUNDER_ROOT}/build/ThunderNanoServices" --target install

