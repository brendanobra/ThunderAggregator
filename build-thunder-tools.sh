#!/bin/bash
set -e
cd "${THUNDER_ROOT}"

cmake -G Ninja -S ThunderTools -B build/ThunderTools       -DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install"

cmake --build build/ThunderTools --target install
