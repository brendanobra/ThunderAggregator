#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderProxyStubs::ThunderProxyStubs" for configuration "Debug"
set_property(TARGET ThunderProxyStubs::ThunderProxyStubs APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderProxyStubs::ThunderProxyStubs PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore;ThunderCOM::ThunderCOM;ThunderMessaging::ThunderMessaging"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5"
  IMPORTED_SONAME_DEBUG "libThunderProxyStubs.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderProxyStubs::ThunderProxyStubs )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderProxyStubs::ThunderProxyStubs "${_IMPORT_PREFIX}/lib/thunder/proxystubs/libThunderProxyStubs.so.5" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
