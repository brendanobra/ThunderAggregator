#!/usr/bin/env bash
set -euo pipefail

BUILD_USER=rdk

HOST_UID="${HOST_UID:-1000}"
HOST_GID="${HOST_GID:-1000}"

echo "[entrypoint] HOST_UID=${HOST_UID} HOST_GID=${HOST_GID}" >&2

# current ids for rdk
CURRENT_UID=$(id -u "${BUILD_USER}")
CURRENT_GID=$(id -g "${BUILD_USER}")

echo "[entrypoint] rdk before: uid=${CURRENT_UID} gid=${CURRENT_GID}" >&2

# change group id if needed
if [ "${CURRENT_GID}" != "${HOST_GID}" ]; then
    echo "[entrypoint] changing gid of ${BUILD_USER} ${CURRENT_GID} -> ${HOST_GID}" >&2
    groupmod -o -g "${HOST_GID}" "${BUILD_USER}"
fi

# change user id if needed
if [ "${CURRENT_UID}" != "${HOST_UID}" ]; then
    echo "[entrypoint] changing uid of ${BUILD_USER} ${CURRENT_UID} -> ${HOST_UID}" >&2
    usermod -o -u "${HOST_UID}" "${BUILD_USER}"
fi

# optional: only fix ownership of rdk's home (small tree), *not* /thunder_root
if [ -d "/home/${BUILD_USER}" ]; then
    chown "${BUILD_USER}:${BUILD_USER}" "/home/${BUILD_USER}" || true
fi

echo "[entrypoint] rdk after: uid=$(id -u ${BUILD_USER}) gid=$(id -g ${BUILD_USER})" >&2
echo "[entrypoint] exec as ${BUILD_USER}: $*" >&2

# make sure gosu is installed in the image; otherwise this will fail
exec gosu "${BUILD_USER}:${BUILD_USER}" "$@"
