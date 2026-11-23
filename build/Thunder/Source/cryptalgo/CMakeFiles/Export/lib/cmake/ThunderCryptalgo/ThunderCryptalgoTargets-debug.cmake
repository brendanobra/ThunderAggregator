#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderCryptalgo::ThunderCryptalgo" for configuration "Debug"
set_property(TARGET ThunderCryptalgo::ThunderCryptalgo APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderCryptalgo::ThunderCryptalgo PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderCryptalgo.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderCryptalgo.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderCryptalgo::ThunderCryptalgo )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderCryptalgo::ThunderCryptalgo "${_IMPORT_PREFIX}/lib/libThunderCryptalgo.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
