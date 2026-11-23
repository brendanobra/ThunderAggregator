#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderCore::ThunderCore" for configuration "Debug"
set_property(TARGET ThunderCore::ThunderCore APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderCore::ThunderCore PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderCore.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderCore.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderCore::ThunderCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderCore::ThunderCore "${_IMPORT_PREFIX}/lib/libThunderCore.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
