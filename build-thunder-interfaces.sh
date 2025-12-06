#!/bin/bash
set -e
cd "${THUNDER_ROOT}"

LOCAL_CMAKE_DIR="${THUNDER_ROOT}/cmake"

MODULE_PATHS=()
MODULE_PATHS+=("${LOCAL_CMAKE_DIR}")
MODULE_PATHS+=("${THUNDER_ROOT}/install/include/Thunder/Modules")

CMAKE_MODULE_PATH_JOINED=$(IFS=';'; echo "${MODULE_PATHS[*]}")

echo "Using CMAKE_MODULE_PATH=${CMAKE_MODULE_PATH_JOINED}"

cmake -G Ninja -S ThunderInterfaces -B build/ThunderInterfaces \
  -DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install" \
  -DCMAKE_PREFIX_PATH="${THUNDER_ROOT}/install" \
  -DCMAKE_MODULE_PATH="${CMAKE_MODULE_PATH_JOINED}" \
  -DEXCEPTIONS_ENABLE=ON

cmake --build build/ThunderInterfaces -j"$(nproc)"
cmake --install build/ThunderInterfaces
