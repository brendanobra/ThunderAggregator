#!/bin/bash
set -e
cd ${THUNDER_ROOT}

./build-thunder-tools.sh
./build-thunder.sh
./build-thunder-interfaces.sh
#these are called plugins in the docs
./build-thunder-services.sh
./build-thunder-services-rdk.sh
./build-thunder-client-libraries.sh