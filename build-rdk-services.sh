# #!/bin/sh

# export THUNDER_INSTALL_DIR=${THUNDER_ROOT}/install
# export CMAKE_INSTALL_PREFIX=${THUNDER_INSTALL_DIR}
# cd ${THUNDER_ROOT}
# cmake -G Ninja -S rdkservices -B build/rdkservices \
# -DCMAKE_INSTALL_PREFIX="install"

# cmake --build build/rdkservices --target install
export TOOLCHAIN_FILE="${THUNDER_ROOT}/rdkservices/Tests/clang.cmake"
export BUILD_TYPE="Debug"
RDK_CFLAGS="
-fprofile-arcs 
-ftest-coverage -DEXCEPTIONS_ENABLE=ON 
-I ${THUNDER_ROOT}/rdkservices/Tests/headers 
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/audiocapturemgr 
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/rdk/ds
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/rdk/iarmbus
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/rdk/iarmmgrs-hal
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/ccec/drivers
-I ${THUNDER_ROOT}/rdkservices/Tests/headers/network
-include ${THUNDER_ROOT}/rdkservices/Tests/mocks/devicesettings.h
-include ${THUNDER_ROOT}/rdkservices/Tests/mocks/maintenanceMGR.h
-include ${THUNDER_ROOT}/rdkservices/Tests/mocks/pkg.h
-include ${THUNDER_ROOT}/rdkservices/Tests/mocks/secure_wrappermock.h
-include ${THUNDER_ROOT}/rdkservices/Tests/mocks/WpaCtrl.h
-Wall -Werror -Wno-error=format= 
-Wl,-wrap,system -Wl,-wrap,popen -Wl,-wrap,syslog
-DENABLE_TELEMETRY_LOGGING
-DUSE_IARMBUS
-DENABLE_SYSTEM_GET_STORE_DEMO_LINK
-DENABLE_DEEP_SLEEP
-DENABLE_SET_WAKEUP_SRC_CONFIG
-DENABLE_THERMAL_PROTECTION
-DUSE_DRM_SCREENCAPTURE
-DHAS_API_SYSTEM
-DHAS_API_POWERSTATE
-DHAS_RBUS
-DDISABLE_SECURITY_TOKEN           
-DENABLE_DEVICE_MANUFACTURER_INFO"

export CFLAGS=$(echo ${RDK_CFLAGS} | paste -sd' '- )

cmake \
  -S "${THUNDER_ROOT}/rdkservices" \
  -B build/rdkservices \
  -DCMAKE_TOOLCHAIN_FILE="${TOOLCHAIN_FILE}" \
  -DCMAKE_INSTALL_PREFIX="${THUNDER_ROOT}/install/usr" \
  -DCMAKE_MODULE_PATH="${THUNDER_ROOT}/install/tools/cmake" \
  -DCMAKE_CXX_FLAGS="${CFLAGS}" \
  -DCOMCAST_CONFIG=OFF \
  -DCMAKE_DISABLE_FIND_PACKAGE_DS=ON \
  -DCMAKE_DISABLE_FIND_PACKAGE_IARMBus=ON \
  -DCMAKE_DISABLE_FIND_PACKAGE_Udev=ON \
  -DCMAKE_DISABLE_FIND_PACKAGE_RFC=ON \
  -DCMAKE_DISABLE_FIND_PACKAGE_RBus=ON \
  -DPLUGIN_DATACAPTURE=ON \
  -DPLUGIN_DEVICEDIAGNOSTICS=ON \
  -DPLUGIN_LOCATIONSYNC=ON \
  -DPLUGIN_TIMER=ON \
  -DPLUGIN_SECURITYAGENT=ON \
  -DPLUGIN_DEVICEIDENTIFICATION=ON \
  -DPLUGIN_FRAMERATE=ON \
  -DPLUGIN_AVINPUT=ON \
  -DPLUGIN_TELEMETRY=ON \
  -DPLUGIN_SCREENCAPTURE=ON \
  -DPLUGIN_USBACCESS=ON \
  -DPLUGIN_LOGGINGPREFERENCES=ON \
  -DPLUGIN_USERPREFERENCES=ON \
  -DPLUGIN_MESSENGER=ON \
  -DPLUGIN_DEVICEINFO=ON \
  -DPLUGIN_SYSTEMSERVICES=ON \
  -DRDK_SERVICES_L1_TEST=ON \
  -DPLUGIN_HDMIINPUT=ON \
  -DPLUGIN_HDCPPROFILE=ON \
  -DPLUGIN_NETWORK=ON \
  -DPLUGIN_WIFIMANAGER=ON \
  -DPLUGIN_TRACECONTROL=ON \
  -DPLUGIN_WAREHOUSE=ON \
  -DPLUGIN_ACTIVITYMONITOR=ON \
  -DDS_FOUND=ON \
  -DPLUGIN_TEXTTOSPEECH=ON \
  -DPLUGIN_SYSTEMAUDIOPLAYER=ON \
  -DPLUGIN_MIRACAST=ON \
  -DCMAKE_BUILD_TYPE=${BUILD_TYPE}
        #   &&
        #   cmake --build build/rdkservices -j8
        #   &&
        #   cmake --install build/rdkservices