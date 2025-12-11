#!/bin/sh
export THUNDER_ROOT=`pwd`
export LD_LIBRARY_PATH="${THUNDER_ROOT}/install/lib:${THUNDER_ROOT}/install/lib/thunder/plugins:${LD_LIBRARY_PATH}"
echo "LD_LIBRARY_PATH=${LD_LIBRARY_PATH}" 

export not_LD_DEBUG=libs
export RUST_HELLO_WASM_PATH="${THUNDER_ROOT}/add.wat"
./install/bin/Thunder -c `pwd`/rust_config_host.json -f  

