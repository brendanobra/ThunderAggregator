#!/bin/bash
set -e
cd "${THUNDER_ROOT}"

BUILD_TYPE="${BUILD_TYPE:-Debug}"

# Local CMake modules (including our custom FindProxyStubGenerator.cmake)
LOCAL_CMAKE_DIR="${THUNDER_ROOT}/cmake"

# Combine module paths: local first, then anything ThunderTools may have installed
MODULE_PATHS=()
MODULE_PATHS+=("${LOCAL_CMAKE_DIR}")
MODULE_PATHS+=("${THUNDER_ROOT}/install/include/Thunder/Modules")

CMAKE_MODULE_PATH_JOINED=$(IFS=';'; echo "${MODULE_PATHS[*]}")

echo "Using CMAKE_MODULE_PATH=${CMAKE_MODULE_PATH_JOINED}"

cmake -G Ninja -S Thunder -B build/Thunder \
  -DCMAKE_BUILD_TYPE="${BUILD_TYPE}" \
  -DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install" \
  -DCMAKE_PREFIX_PATH="${THUNDER_ROOT}/install" \
  -DCMAKE_MODULE_PATH="/thunder_root/cmake:${CMAKE_MODULE_PATH_JOINED}" \
  -DBINDING="127.0.0.1" \
  -DPORT=55555 \
  -DEXCEPTIONS_ENABLE=ON

cmake --build build/Thunder -j"$(nproc)"
cmake --install build/Thunder
