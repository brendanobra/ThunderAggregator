#!/bin/sh
cd ${THUNDER_ROOT}
cmake -G Ninja -S ThunderClientLibraries -B build/ThunderClientLibraries \
-DCMAKE_INSTALL_PREFIX="install" \
-DBLUETOOTHAUDIOSINK=ON \
-DDEVICEINFO=ON \
-DDISPLAYINFO=ON \
-DSECURITYAGENT=ON \
-DPLAYERINFO=ON \
-DPROTOCOLS=ON \
-DVIRTUALINPUT=ON

cmake --build build/ThunderClientLibraries --target install