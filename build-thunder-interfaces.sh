#!/bin/sh
set -e
cd ${THUNDER_ROOT}

cmake \
-S "${THUNDER_ROOT}/ThunderInterfaces" \
-B build/ThunderInterfaces \
-DEXCEPTIONS_ENABLE=ON \
-DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install/usr" \
-DCMAKE_MODULE_PATH="${THUNDER_ROOT}/install/tools/cmake" 
cmake --build build/ThunderInterfaces -j8 
cmake --install build/ThunderInterfaces

# cmake -G Ninja -S ThunderInterfaces -B build/ThunderInterfaces \
# -DCMAKE_INSTALL_PREFIX="install"
# cmake --build build/ThunderInterfaces -j8
# cmake --install build/ThunderInterfaces
#cmake --build build/ThunderInterfaces --target install