#!/bin/bash
set -e

if [ -z "${THUNDER_ROOT}" ]; then
  echo "THUNDER_ROOT is not set" >&2
  exit 1
fi

cd "${THUNDER_ROOT}"

# Full clean bootstrap
rm -rf "${THUNDER_ROOT}/install" "${THUNDER_ROOT}/build"

./build-thunder-tools.sh
./build-thunder.sh
./build-thunder-interfaces.sh

./build-thunder-services.sh
./build-thunder-services-rdk.sh
./build-thunder-client-libraries.sh
