# Install script for directory: /thunder_root/ThunderInterfaces/interfaces

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs" TYPE SHARED_LIBRARY FILES
    "/thunder_root/build/ThunderInterfaces/interfaces/libThunderMarshalling.so.5.0.0"
    "/thunder_root/build/ThunderInterfaces/interfaces/libThunderMarshalling.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/thunder_root/install/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs" TYPE SHARED_LIBRARY FILES "/thunder_root/build/ThunderInterfaces/interfaces/libThunderMarshalling.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so"
         OLD_RPATH "/thunder_root/install/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/thunder/proxystubs/libThunderMarshalling.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/interfaces" TYPE FILE FILES
    "/thunder_root/ThunderInterfaces/interfaces/IAVNClient.h"
    "/thunder_root/ThunderInterfaces/interfaces/IAVSClient.h"
    "/thunder_root/ThunderInterfaces/interfaces/IAmazonPrime.h"
    "/thunder_root/ThunderInterfaces/interfaces/IApplication.h"
    "/thunder_root/ThunderInterfaces/interfaces/IAudioStream.h"
    "/thunder_root/ThunderInterfaces/interfaces/IBluetooth.h"
    "/thunder_root/ThunderInterfaces/interfaces/IBluetoothAudio.h"
    "/thunder_root/ThunderInterfaces/interfaces/IBluetoothRemoteControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IBrowser.h"
    "/thunder_root/ThunderInterfaces/interfaces/IButler.h"
    "/thunder_root/ThunderInterfaces/interfaces/ICapture.h"
    "/thunder_root/ThunderInterfaces/interfaces/ICommand.h"
    "/thunder_root/ThunderInterfaces/interfaces/IComposition.h"
    "/thunder_root/ThunderInterfaces/interfaces/IConfiguration.h"
    "/thunder_root/ThunderInterfaces/interfaces/IContentDecryption.h"
    "/thunder_root/ThunderInterfaces/interfaces/IContentProtection.h"
    "/thunder_root/ThunderInterfaces/interfaces/ICryptography.h"
    "/thunder_root/ThunderInterfaces/interfaces/ICustomerCareOperations.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDIALServer.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDNSServer.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDRM.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDeviceIdentification.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDeviceInfo.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDictionary.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDisplayInfo.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDolby.h"
    "/thunder_root/ThunderInterfaces/interfaces/IDsgccClient.h"
    "/thunder_root/ThunderInterfaces/interfaces/IExternal.h"
    "/thunder_root/ThunderInterfaces/interfaces/IExternalBase.h"
    "/thunder_root/ThunderInterfaces/interfaces/IFocus.h"
    "/thunder_root/ThunderInterfaces/interfaces/IGraphicsBuffer.h"
    "/thunder_root/ThunderInterfaces/interfaces/IGuide.h"
    "/thunder_root/ThunderInterfaces/interfaces/IIOConnector.h"
    "/thunder_root/ThunderInterfaces/interfaces/IIPNetwork.h"
    "/thunder_root/ThunderInterfaces/interfaces/IInputPin.h"
    "/thunder_root/ThunderInterfaces/interfaces/IInputSwitch.h"
    "/thunder_root/ThunderInterfaces/interfaces/IKeyHandler.h"
    "/thunder_root/ThunderInterfaces/interfaces/ILISA.h"
    "/thunder_root/ThunderInterfaces/interfaces/ILanguageTag.h"
    "/thunder_root/ThunderInterfaces/interfaces/ILocationSync.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMath.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMediaPlayer.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMemory.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMemoryMonitor.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMessageControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IMessenger.h"
    "/thunder_root/ThunderInterfaces/interfaces/INetflix.h"
    "/thunder_root/ThunderInterfaces/interfaces/INetflixSecurity.h"
    "/thunder_root/ThunderInterfaces/interfaces/INetworkControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/INetworkTools.h"
    "/thunder_root/ThunderInterfaces/interfaces/IOCDM.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPackageManager.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPackager.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPerformance.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPlayGiga.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPlayerInfo.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPluginAsyncStateControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IPower.h"
    "/thunder_root/ThunderInterfaces/interfaces/IProvisioning.h"
    "/thunder_root/ThunderInterfaces/interfaces/IRPCLink.h"
    "/thunder_root/ThunderInterfaces/interfaces/IRemoteControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IResourceMonitor.h"
    "/thunder_root/ThunderInterfaces/interfaces/IRtspClient.h"
    "/thunder_root/ThunderInterfaces/interfaces/IRustBridge.h"
    "/thunder_root/ThunderInterfaces/interfaces/IScriptEngine.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISecureShellServer.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISecurityAgent.h"
    "/thunder_root/ThunderInterfaces/interfaces/IStore.h"
    "/thunder_root/ThunderInterfaces/interfaces/IStore2.h"
    "/thunder_root/ThunderInterfaces/interfaces/IStoreCache.h"
    "/thunder_root/ThunderInterfaces/interfaces/IStream.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISubsystemControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISwitchBoard.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISystemAudioPlayer.h"
    "/thunder_root/ThunderInterfaces/interfaces/ISystemCommands.h"
    "/thunder_root/ThunderInterfaces/interfaces/ITextToSpeech.h"
    "/thunder_root/ThunderInterfaces/interfaces/ITimeSync.h"
    "/thunder_root/ThunderInterfaces/interfaces/ITimeZone.h"
    "/thunder_root/ThunderInterfaces/interfaces/IUSBHub.h"
    "/thunder_root/ThunderInterfaces/interfaces/IValuePoint.h"
    "/thunder_root/ThunderInterfaces/interfaces/IVoiceHandler.h"
    "/thunder_root/ThunderInterfaces/interfaces/IVolumeControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWatchDog.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWatermark.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWebDriver.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWebPA.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWebServer.h"
    "/thunder_root/ThunderInterfaces/interfaces/IWifiControl.h"
    "/thunder_root/ThunderInterfaces/interfaces/IZigWave.h"
    "/thunder_root/ThunderInterfaces/interfaces/Ids.h"
    "/thunder_root/ThunderInterfaces/interfaces/DRMHelper.h"
    "/thunder_root/ThunderInterfaces/interfaces/Portability.h"
    "/thunder_root/ThunderInterfaces/interfaces/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/thunder_root/build/ThunderInterfaces/interfaces/cdmi.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/interfaces/json" TYPE FILE FILES "/thunder_root/ThunderInterfaces/interfaces/json/ExternalMetadata.h")
endif()

