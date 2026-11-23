#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderDefinitions::ThunderDefinitions" for configuration "Debug"
set_property(TARGET ThunderDefinitions::ThunderDefinitions APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderDefinitions::ThunderDefinitions PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderDefinitions.so.5.0.0"
  IMPORTED_SONAME_DEBUG "libThunderDefinitions.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderDefinitions::ThunderDefinitions )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderDefinitions::ThunderDefinitions "${_IMPORT_PREFIX}/lib/libThunderDefinitions.so.5.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
