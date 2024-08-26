#!/bin/bash
cd ${THUNDER_ROOT}
cmake -G Ninja -S ThunderTools -B build/ThunderTools -DCMAKE_INSTALL_PREFIX="install"

cmake --build build/ThunderTools --target install