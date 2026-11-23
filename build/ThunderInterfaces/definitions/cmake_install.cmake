# Install script for directory: /thunder_root/ThunderInterfaces/definitions

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/thunder_root/build/ThunderInterfaces/definitions/libThunderDefinitions.so.5.0.0"
    "/thunder_root/build/ThunderInterfaces/definitions/libThunderDefinitions.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so.5"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/thunder_root/build/ThunderInterfaces/definitions/libThunderDefinitions.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so"
         OLD_RPATH "/thunder_root/install/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libThunderDefinitions.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/definitions" TYPE FILE FILES
    "/thunder_root/ThunderInterfaces/definitions/definitions.h"
    "/thunder_root/ThunderInterfaces/definitions/ValuePoint.h"
    "/thunder_root/ThunderInterfaces/definitions/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JAVSController.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JAmazonPrime.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JApplication.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JAudioStream.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBluetoothAudioSink.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBluetoothAudioSource.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBluetoothControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBluetoothRemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBrowser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBrowserCookieJar.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBrowserResources.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBrowserScripting.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JBrowserSecurity.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JButler.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JCobalt.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JCompositor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JConnectionProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JContainers.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JContentProtection.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JCustomerCareOperations.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDHCPServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDIALServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDNSServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDTV.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDeviceIdentification.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDeviceInfo.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDictionary.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDisplayProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JDolbyOutput.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JFirmwareControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JGraphicsProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JHDRProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JIOConnector.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JInputSwitch.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JLISA.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JLanguageTag.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JLocationSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JMath.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JMemoryMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JMessageControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JMessenger.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JNetflix.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JNetworkControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JNetworkTools.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JOCDM.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JOpenCDM.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPackageManager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPackager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPerformanceMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPersistentStore.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPlayerProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JPower.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JProvisioning.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JRemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JScriptEngine.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JSecureShellServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JSecurityAgent.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JStateControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JStore2.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JStreamer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JSubsystemControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JSystemCommands.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JTimeSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JTimeZone.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JUSBHub.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JValuePointCatalog.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JVolumeControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JWatchDog.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JWebBrowser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JWebBrowserExt.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JWifiControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JZigWave.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_AVSController.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Application.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_AudioStream.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BluetoothAudioSink.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BluetoothAudioSource.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BluetoothControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BluetoothRemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Browser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BrowserCookieJar.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BrowserResources.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BrowserScripting.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_BrowserSecurity.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Butler.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Compositor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_ConnectionProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Containers.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_ContentProtection.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DHCPServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DIALServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DNSServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DTV.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DeviceIdentification.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DeviceInfo.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Dictionary.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DisplayProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_DolbyOutput.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_FirmwareControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_HDRProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_IOConnector.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_InputSwitch.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_LISA.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_LocationSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Math.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_MemoryMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_MessageControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Messenger.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Monitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Netflix.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_NetworkControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_NetworkTools.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_OCDM.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_PackageManager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Packager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_PerformanceMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_PersistentStore.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_PlayerProperties.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Power.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Provisioning.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_RemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_ScriptEngine.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_SecureShellServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_SecurityAgent.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_StateControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Store2.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_Streamer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_SubsystemControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_SystemCommands.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_TimeSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_USBHub.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_ValuePointCatalog.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_VolumeControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_WatchDog.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_WebBrowser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_WebBrowserExt.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_WifiControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/JsonData_ZigWave.h"
    "/thunder_root/ThunderInterfaces/definitions/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Browser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Cobalt.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Compositor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Containers.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_DHCPServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_DIALServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_DTV.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_DeviceInfo.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_FirmwareControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IAVSClient.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IAmazonPrime.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IApplication.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IAudioStream.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IBluetooth.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IBluetoothAudio.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IBluetoothRemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IBrowser.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IButler.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IContentProtection.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ICustomerCareOperations.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IDNSServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IDeviceIdentification.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IDictionary.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IDisplayInfo.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IDolby.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IIOConnector.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ILanguageTag.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ILocationSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IMath.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IMemoryMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IMessageControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IMessenger.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_INetworkControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_INetworkTools.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IOCDM.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IPackageManager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IPackager.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IPlayerInfo.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IPower.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IScriptEngine.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ISecurityAgent.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IStore2.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ISubsystemControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ISystemCommands.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ITimeSync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_ITimeZone.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IUSBHub.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IValuePoint.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IVolumeControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IWatchDog.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IWifiControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_IZigWave.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_InputSwitch.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_LISA.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Monitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Netflix.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_OCDM.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_PerformanceMonitor.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_PersistentStore.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Provisioning.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_RemoteControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_SecureShellServer.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_StateControl.h"
    "/thunder_root/build/ThunderInterfaces/definitions/generated/json_Streamer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Test_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/qa_interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JComRpc.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JMemory.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestController.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestTextOptions.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestTextOptionsTestCustom.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestTextOptionsTestKeep.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestTextOptionsTestLegacy.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestUtility.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JTestUtils.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_ComRpc.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_Memory.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestController.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestTextOptions.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestTextOptionsTestCustom.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestTextOptionsTestKeep.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestTextOptionsTestLegacy.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestUtility.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/JsonData_TestUtils.h"
    "/thunder_root/ThunderInterfaces/definitions/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Test_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/qa_interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/json_ITestAutomation.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/json_TestController.h"
    "/thunder_root/build/ThunderInterfaces/definitions/qa_generated/json_TestUtility.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Example_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/example_interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JCustomErrorCode.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JSimpleAsync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JSimpleCustomObjects.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JSimpleInstanceObjects.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JsonData_CustomErrorCode.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JsonData_SimpleAsync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JsonData_SimpleCustomObjects.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/JsonData_SimpleInstanceObjects.h"
    "/thunder_root/ThunderInterfaces/definitions/Module.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Example_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Thunder/example_interfaces/json" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/json_ICustomErrorCode.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/json_ISimpleAsync.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/json_ISimpleCustomObjects.h"
    "/thunder_root/build/ThunderInterfaces/definitions/example_generated/json_ISimpleInstanceObjects.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/thunder_root/build/ThunderInterfaces/definitions/ThunderDefinitions.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets.cmake"
         "/thunder_root/build/ThunderInterfaces/definitions/CMakeFiles/Export/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions" TYPE FILE FILES "/thunder_root/build/ThunderInterfaces/definitions/CMakeFiles/Export/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions" TYPE FILE FILES "/thunder_root/build/ThunderInterfaces/definitions/CMakeFiles/Export/lib/cmake/ThunderDefinitions/ThunderDefinitionsTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xThunder_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ThunderDefinitions" TYPE FILE FILES
    "/thunder_root/build/ThunderInterfaces/definitions/ThunderDefinitionsConfigVersion.cmake"
    "/thunder_root/build/ThunderInterfaces/definitions/ThunderDefinitionsConfig.cmake"
    )
endif()

