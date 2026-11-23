# Install script for directory: /thunder_root/Thunder/Source/plugins

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/thunder_root/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Runtimex" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/thunder_root/build/Thunder/Source/plugins/libThunderPlugins.so.5.3.0"
    "/thunder_root/build/Thunder/Source/plugins/libThunderPlugins.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/thunder_root/build/Thunder/Source/com:/thunder_root/build/Thunder/Source/websocket:/thunder_root/build/Thunder/Source/messaging:/thunder_root/build/Thunder/Source/cryptalgo:/thunder_root/build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/thunder_root/build/Thunder/Source/plugins/libThunderPlugins.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so"
         OLD_RPATH "/thunder_root/build/Thunder/Source/com:/thunder_root/build/Thunder/Source/websocket:/thunder_root/build/Thunder/Source/messaging:/thunder_root/build/Thunder/Source/cryptalgo:/thunder_root/build/Thunder/Source/core:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderPlugins.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/plugins" TYPE FILE FILES
    "/thunder_root/Thunder/Source/plugins/Channel.h"
    "/thunder_root/Thunder/Source/plugins/Config.h"
    "/thunder_root/Thunder/Source/plugins/Configuration.h"
    "/thunder_root/Thunder/Source/plugins/IPlugin.h"
    "/thunder_root/Thunder/Source/plugins/IShell.h"
    "/thunder_root/Thunder/Source/plugins/IController.h"
    "/thunder_root/Thunder/Source/plugins/IStateControl.h"
    "/thunder_root/Thunder/Source/plugins/IStateController.h"
    "/thunder_root/Thunder/Source/plugins/StateControl.h"
    "/thunder_root/Thunder/Source/plugins/ISubSystem.h"
    "/thunder_root/Thunder/Source/plugins/IDispatcher.h"
    "/thunder_root/Thunder/Source/plugins/SubSystem.h"
    "/thunder_root/Thunder/Source/plugins/JSONRPC.h"
    "/thunder_root/Thunder/Source/plugins/Metadata.h"
    "/thunder_root/Thunder/Source/plugins/plugins.h"
    "/thunder_root/Thunder/Source/plugins/Request.h"
    "/thunder_root/Thunder/Source/plugins/Service.h"
    "/thunder_root/Thunder/Source/plugins/System.h"
    "/thunder_root/Thunder/Source/plugins/Types.h"
    "/thunder_root/Thunder/Source/plugins/VirtualInput.h"
    "/thunder_root/Thunder/Source/plugins/IVirtualInput.h"
    "/thunder_root/Thunder/Source/plugins/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/plugins/json" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_Discovery.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_Events.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_LifeTime.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_Metadata.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_StateController.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_Subsystems.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JsonData_System.h"
    "/thunder_root/build/Thunder/Source/plugins/json/json_IController.h"
    "/thunder_root/build/Thunder/Source/plugins/json/json_IStateController.h"
    "/thunder_root/build/Thunder/Source/plugins/json/JStateController.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Runtimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs" TYPE SHARED_LIBRARY FILES "/thunder_root/build/Thunder/Source/plugins/libThunderProxyStubs.so.5")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5"
         OLD_RPATH "/thunder_root/build/Thunder/Source/com:/thunder_root/build/Thunder/Source/messaging:/thunder_root/build/Thunder/Source/core:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs" TYPE SHARED_LIBRARY FILES "/thunder_root/build/Thunder/Source/plugins/libThunderProxyStubs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so"
         OLD_RPATH "/thunder_root/build/Thunder/Source/com:/thunder_root/build/Thunder/Source/messaging:/thunder_root/build/Thunder/Source/core:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/thunder_root/build/Thunder/Source/plugins/ThunderPlugins.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins/ThunderPluginsTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins/ThunderPluginsTargets.cmake"
         "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderPlugins/ThunderPluginsTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins/ThunderPluginsTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins/ThunderPluginsTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins" TYPE FILE FILES "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderPlugins/ThunderPluginsTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins" TYPE FILE FILES "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderPlugins/ThunderPluginsTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderPlugins" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/plugins/ThunderPluginsConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/plugins/ThunderPluginsConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets.cmake"
         "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs" TYPE FILE FILES "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs" TYPE FILE FILES "/thunder_root/build/Thunder/Source/plugins/CMakeFiles/Export/lib/cmake/ThunderProxyStubs/ThunderProxyStubsTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderProxyStubs" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/plugins/ThunderProxyStubsConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/plugins/ThunderProxyStubsConfig.cmake"
    )
endif()

