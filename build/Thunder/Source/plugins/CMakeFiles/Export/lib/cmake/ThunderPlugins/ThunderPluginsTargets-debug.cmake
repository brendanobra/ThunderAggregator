#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderPlugins::ThunderPlugins" for configuration "Debug"
set_property(TARGET ThunderPlugins::ThunderPlugins APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderPlugins::ThunderPlugins PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderPlugins.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderPlugins.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderPlugins::ThunderPlugins )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderPlugins::ThunderPlugins "${_IMPORT_PREFIX}/lib/libThunderPlugins.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
