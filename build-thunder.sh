#!/bin/sh
cd ${THUNDER_ROOT}
cmake -G Ninja -S Thunder -B build/Thunder \
-DBINDING="127.0.0.1" \
-DCMAKE_BUILD_TYPE="Debug" \
-DCMAKE_INSTALL_PREFIX="install" \
-DPORT="55555" \
-DTOOLS_SYSROOT="${PWD}" \
-DINITV_SCRIPT=OFF 

cmake --build build/Thunder --target install