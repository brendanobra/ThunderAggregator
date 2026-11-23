# Install script for directory: /thunder_root/Thunder/Source/core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/thunder_root/build/Thunder/Source/core/libThunderCore.so.5.3.0"
    "/thunder_root/build/Thunder/Source/core/libThunderCore.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/thunder_root/build/Thunder/Source/core/libThunderCore.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderCore.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/core" TYPE FILE FILES
    "/thunder_root/Thunder/Source/core/ASN1.h"
    "/thunder_root/Thunder/Source/core/AssertionControl.h"
    "/thunder_root/Thunder/Source/core/DoorBell.h"
    "/thunder_root/Thunder/Source/core/Config.h"
    "/thunder_root/Thunder/Source/core/core.h"
    "/thunder_root/Thunder/Source/core/CyclicBuffer.h"
    "/thunder_root/Thunder/Source/core/DataBuffer.h"
    "/thunder_root/Thunder/Source/core/DataElementFile.h"
    "/thunder_root/Thunder/Source/core/DataElement.h"
    "/thunder_root/Thunder/Source/core/Enumerate.h"
    "/thunder_root/Thunder/Source/core/Factory.h"
    "/thunder_root/Thunder/Source/core/FileSystem.h"
    "/thunder_root/Thunder/Source/core/FileObserver.h"
    "/thunder_root/Thunder/Source/core/Frame.h"
    "/thunder_root/Thunder/Source/core/IAction.h"
    "/thunder_root/Thunder/Source/core/IAssertionControl.h"
    "/thunder_root/Thunder/Source/core/IIterator.h"
    "/thunder_root/Thunder/Source/core/IObserver.h"
    "/thunder_root/Thunder/Source/core/IPCMessage.h"
    "/thunder_root/Thunder/Source/core/IPFrame.h"
    "/thunder_root/Thunder/Source/core/IPCChannel.h"
    "/thunder_root/Thunder/Source/core/IPCConnector.h"
    "/thunder_root/Thunder/Source/core/ISO639.h"
    "/thunder_root/Thunder/Source/core/IWarningReportingControl.h"
    "/thunder_root/Thunder/Source/core/JSON.h"
    "/thunder_root/Thunder/Source/core/JSONRPC.h"
    "/thunder_root/Thunder/Source/core/KeyValue.h"
    "/thunder_root/Thunder/Source/core/Library.h"
    "/thunder_root/Thunder/Source/core/Link.h"
    "/thunder_root/Thunder/Source/core/LockableContainer.h"
    "/thunder_root/Thunder/Source/core/Measurement.h"
    "/thunder_root/Thunder/Source/core/MACAddress.h"
    "/thunder_root/Thunder/Source/core/Media.h"
    "/thunder_root/Thunder/Source/core/MessageException.h"
    "/thunder_root/Thunder/Source/core/Messaging.h"
    "/thunder_root/Thunder/Source/core/Module.h"
    "/thunder_root/Thunder/Source/core/Netlink.h"
    "/thunder_root/Thunder/Source/core/NetworkInfo.h"
    "/thunder_root/Thunder/Source/core/NodeId.h"
    "/thunder_root/Thunder/Source/core/Number.h"
    "/thunder_root/Thunder/Source/core/Optional.h"
    "/thunder_root/Thunder/Source/core/Parser.h"
    "/thunder_root/Thunder/Source/core/Portability.h"
    "/thunder_root/Thunder/Source/core/Process.h"
    "/thunder_root/Thunder/Source/core/ProcessInfo.h"
    "/thunder_root/Thunder/Source/core/Proxy.h"
    "/thunder_root/Thunder/Source/core/Queue.h"
    "/thunder_root/Thunder/Source/core/Range.h"
    "/thunder_root/Thunder/Source/core/ReadWriteLock.h"
    "/thunder_root/Thunder/Source/core/Rectangle.h"
    "/thunder_root/Thunder/Source/core/RequestResponse.h"
    "/thunder_root/Thunder/Source/core/ResourceMonitor.h"
    "/thunder_root/Thunder/Source/core/Serialization.h"
    "/thunder_root/Thunder/Source/core/SerialPort.h"
    "/thunder_root/Thunder/Source/core/Services.h"
    "/thunder_root/Thunder/Source/core/SharedBuffer.h"
    "/thunder_root/Thunder/Source/core/Singleton.h"
    "/thunder_root/Thunder/Source/core/SocketPort.h"
    "/thunder_root/Thunder/Source/core/SocketServer.h"
    "/thunder_root/Thunder/Source/core/StateTrigger.h"
    "/thunder_root/Thunder/Source/core/StopWatch.h"
    "/thunder_root/Thunder/Source/core/Stream.h"
    "/thunder_root/Thunder/Source/core/StreamJSON.h"
    "/thunder_root/Thunder/Source/core/StreamText.h"
    "/thunder_root/Thunder/Source/core/StreamTypeLengthValue.h"
    "/thunder_root/Thunder/Source/core/Sync.h"
    "/thunder_root/Thunder/Source/core/Synchronize.h"
    "/thunder_root/Thunder/Source/core/SynchronousChannel.h"
    "/thunder_root/Thunder/Source/core/SystemInfo.h"
    "/thunder_root/Thunder/Source/core/TextFragment.h"
    "/thunder_root/Thunder/Source/core/TextReader.h"
    "/thunder_root/Thunder/Source/core/TextStreamRedirectType.h"
    "/thunder_root/Thunder/Source/core/Thread.h"
    "/thunder_root/Thunder/Source/core/ThreadPool.h"
    "/thunder_root/Thunder/Source/core/Time.h"
    "/thunder_root/Thunder/Source/core/Timer.h"
    "/thunder_root/Thunder/Source/core/Trace.h"
    "/thunder_root/Thunder/Source/core/TypeTraits.h"
    "/thunder_root/Thunder/Source/core/ValueRecorder.h"
    "/thunder_root/Thunder/Source/core/XGetopt.h"
    "/thunder_root/Thunder/Source/core/WorkerPool.h"
    "/thunder_root/Thunder/Source/core/WarningReportingControl.h"
    "/thunder_root/Thunder/Source/core/WarningReportingCategories.h"
    "/thunder_root/Thunder/Source/core/Module.h"
    "/thunder_root/Thunder/Source/core/CallsignTLS.h"
    "/thunder_root/Thunder/Source/core/TokenizedStringList.h"
    "/thunder_root/Thunder/Source/core/MessageStore.h"
    "/thunder_root/Thunder/Source/core/ICustomErrorCode.h"
    "/thunder_root/Thunder/Source/core/Errors.h"
    "/thunder_root/Thunder/Source/core/ExtraNumberDefinitions.h"
    "/thunder_root/build/Thunder/Source/core/generated/core/Version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/thunder_root/build/Thunder/Source/core/ThunderCore.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore/ThunderCoreTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore/ThunderCoreTargets.cmake"
         "/thunder_root/build/Thunder/Source/core/CMakeFiles/Export/lib/cmake/ThunderCore/ThunderCoreTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore/ThunderCoreTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore/ThunderCoreTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore" TYPE FILE FILES "/thunder_root/build/Thunder/Source/core/CMakeFiles/Export/lib/cmake/ThunderCore/ThunderCoreTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore" TYPE FILE FILES "/thunder_root/build/Thunder/Source/core/CMakeFiles/Export/lib/cmake/ThunderCore/ThunderCoreTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderCore" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/core/ThunderCoreConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/core/ThunderCoreConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake"
         "/thunder_root/build/Thunder/Source/core/CMakeFiles/Export/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug" TYPE FILE FILES "/thunder_root/build/Thunder/Source/core/CMakeFiles/Export/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/core/CompileSettingsDebugConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/core/CompileSettingsDebugConfig.cmake"
    )
endif()

