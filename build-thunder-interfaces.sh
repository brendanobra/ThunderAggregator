#!/bin/sh
cd ${THUNDER_ROOT}
cmake -G Ninja -S ThunderInterfaces -B build/ThunderInterfaces \
-DCMAKE_INSTALL_PREFIX="install"

cmake --build build/ThunderInterfaces --target install