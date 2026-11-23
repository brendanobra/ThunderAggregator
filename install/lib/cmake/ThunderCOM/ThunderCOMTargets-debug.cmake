#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderCOM::ThunderCOM" for configuration "Debug"
set_property(TARGET ThunderCOM::ThunderCOM APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderCOM::ThunderCOM PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore;ThunderMessaging::ThunderMessaging"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderCOM.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderCOM.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderCOM::ThunderCOM )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderCOM::ThunderCOM "${_IMPORT_PREFIX}/lib/libThunderCOM.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
