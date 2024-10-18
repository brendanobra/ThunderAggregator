#!/bin/bash
set -e
cd ${THUNDER_ROOT}
export THUNDER_INSTALL_DIR=${THUNDER_ROOT}/install
export CMAKE_INSTALL_PREFIX=${THUNDER_INSTALL_DIR}
export PATH=${THUNDER_ROOT}/install/usr/bin:${PATH}
export LD_LIBRARY_PATH=${THUNDER_ROOT}/install/usr/lib:${THUNDER_ROOT}/install/usr/lib/wpeframework/plugins:${LD_LIBRARY_PATH}
export INCLUDE_PATH=${THUNDER_ROOT}/install/include:${INCLUDE_PATH}
#./build-thunder-tools.sh
./build-thunder.sh
./build-thunder-interfaces.sh
#these are called plugins in the docs
./build-thunder-services.sh
./build-thunder-services-rdk.sh
./build-thunder-client-libraries.sh
./build-rdk-services.sh
