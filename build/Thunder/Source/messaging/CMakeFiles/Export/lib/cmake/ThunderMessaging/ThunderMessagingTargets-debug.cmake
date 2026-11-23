#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderMessaging::ThunderMessaging" for configuration "Debug"
set_property(TARGET ThunderMessaging::ThunderMessaging APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderMessaging::ThunderMessaging PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderMessaging.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderMessaging.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderMessaging::ThunderMessaging )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderMessaging::ThunderMessaging "${_IMPORT_PREFIX}/lib/libThunderMessaging.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
