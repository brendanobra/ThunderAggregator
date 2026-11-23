# Install script for directory: /thunder_root/Thunder/Source/messaging

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/thunder_root/build/Thunder/Source/messaging/libThunderMessaging.so.5.3.0"
    "/thunder_root/build/Thunder/Source/messaging/libThunderMessaging.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so.5.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/thunder_root/build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/thunder_root/build/Thunder/Source/messaging/libThunderMessaging.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so"
         OLD_RPATH "/thunder_root/build/Thunder/Source/core:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderMessaging.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/messaging" TYPE FILE FILES
    "/thunder_root/Thunder/Source/messaging/Module.h"
    "/thunder_root/Thunder/Source/messaging/MessageClient.h"
    "/thunder_root/Thunder/Source/messaging/messaging.h"
    "/thunder_root/Thunder/Source/messaging/MessageDispatcher.h"
    "/thunder_root/Thunder/Source/messaging/MessageUnit.h"
    "/thunder_root/Thunder/Source/messaging/TraceCategories.h"
    "/thunder_root/Thunder/Source/messaging/TraceControl.h"
    "/thunder_root/Thunder/Source/messaging/Control.h"
    "/thunder_root/Thunder/Source/messaging/Logging.h"
    "/thunder_root/Thunder/Source/messaging/LoggingCategories.h"
    "/thunder_root/Thunder/Source/messaging/DirectOutput.h"
    "/thunder_root/Thunder/Source/messaging/Module.h"
    "/thunder_root/Thunder/Source/messaging/TraceFactory.h"
    "/thunder_root/Thunder/Source/messaging/ConsoleStreamRedirect.h"
    "/thunder_root/Thunder/Source/messaging/OperationalCategories.h"
    "/thunder_root/Thunder/Source/messaging/AssertionUnit.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging/ThunderMessagingTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging/ThunderMessagingTargets.cmake"
         "/thunder_root/build/Thunder/Source/messaging/CMakeFiles/Export/lib/cmake/ThunderMessaging/ThunderMessagingTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging/ThunderMessagingTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging/ThunderMessagingTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging" TYPE FILE FILES "/thunder_root/build/Thunder/Source/messaging/CMakeFiles/Export/lib/cmake/ThunderMessaging/ThunderMessagingTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging" TYPE FILE FILES "/thunder_root/build/Thunder/Source/messaging/CMakeFiles/Export/lib/cmake/ThunderMessaging/ThunderMessagingTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderMessaging" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/messaging/ThunderMessagingConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/messaging/ThunderMessagingConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/tracing" TYPE FILE FILES
    "/thunder_root/Thunder/Source/messaging/Module.h"
    "/thunder_root/Thunder/Source/messaging/MessageClient.h"
    "/thunder_root/Thunder/Source/messaging/messaging.h"
    "/thunder_root/Thunder/Source/messaging/MessageDispatcher.h"
    "/thunder_root/Thunder/Source/messaging/MessageUnit.h"
    "/thunder_root/Thunder/Source/messaging/TraceCategories.h"
    "/thunder_root/Thunder/Source/messaging/TraceControl.h"
    "/thunder_root/Thunder/Source/messaging/Control.h"
    "/thunder_root/Thunder/Source/messaging/Logging.h"
    "/thunder_root/Thunder/Source/messaging/LoggingCategories.h"
    "/thunder_root/Thunder/Source/messaging/DirectOutput.h"
    "/thunder_root/Thunder/Source/messaging/Module.h"
    "/thunder_root/Thunder/Source/messaging/TraceFactory.h"
    "/thunder_root/Thunder/Source/messaging/ConsoleStreamRedirect.h"
    "/thunder_root/Thunder/Source/messaging/OperationalCategories.h"
    "/thunder_root/Thunder/Source/messaging/AssertionUnit.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing/ThunderTracingTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing/ThunderTracingTargets.cmake"
         "/thunder_root/build/Thunder/Source/messaging/CMakeFiles/Export/lib/cmake/ThunderTracing/ThunderTracingTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing/ThunderTracingTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing/ThunderTracingTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing" TYPE FILE FILES "/thunder_root/build/Thunder/Source/messaging/CMakeFiles/Export/lib/cmake/ThunderTracing/ThunderTracingTargets.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderTracing" TYPE FILE FILES
    "/thunder_root/build/Thunder/Source/messaging/ThunderTracingConfigVersion.cmake"
    "/thunder_root/build/Thunder/Source/messaging/ThunderTracingConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/tracing" TYPE FILE FILES "/thunder_root/build/Thunder/Source/messaging/tracing.h")
endif()

