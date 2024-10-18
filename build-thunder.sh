#!/bin/sh
cd ${THUNDER_ROOT}
export BUILD_TYPE="Debug"
# cmake -G Ninja -S Thunder -B build/Thunder \
# -DBINDING="127.0.0.1" \
# -DCMAKE_BUILD_TYPE="Debug" \
# -DCMAKE_INSTALL_PREFIX="install" \
# -DPORT="55555" \
# -DTOOLS_SYSROOT="${PWD}" \
# -DINITV_SCRIPT=OFF 

# cmake --build build/Thunder -j8
# cmake --install build/Thunder
#cmake --build build/Thunder --target install
cmake \
-S "${THUNDER_ROOT}/ThunderTools" \
-B build/ThunderTools \
-DEXCEPTIONS_ENABLE=ON \
-DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install/usr" \
-DCMAKE_MODULE_PATH="${THUNDER_ROOT}/install/tools/cmake" \
-DGENERIC_CMAKE_MODULE_PATH="${THUNDER_ROOT}/install/tools/cmake" 
cmake --build build/ThunderTools -j8 
cmake --install build/ThunderTools 

cmake -S "${THUNDER_ROOT}/Thunder" \
-B build/Thunder \
-DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install/usr" \
-DCMAKE_MODULE_PATH="${THUNDER_ROOT}/install/tools/cmake" \
-DBUILD_TYPE="${BUILD_TYPE}" \
-DBINDING=127.0.0.1 \
-DPORT=55555 \
-DEXCEPTIONS_ENABLE=ON \
cmake --build build/Thunder -j8 
cmake --install build/Thunder 