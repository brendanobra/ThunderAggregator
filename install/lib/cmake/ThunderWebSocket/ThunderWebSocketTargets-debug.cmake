#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThunderWebSocket::ThunderWebSocket" for configuration "Debug"
set_property(TARGET ThunderWebSocket::ThunderWebSocket APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThunderWebSocket::ThunderWebSocket PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ThunderCore::ThunderCore;ThunderCryptalgo::ThunderCryptalgo"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libThunderWebSocket.so.5.3.0"
  IMPORTED_SONAME_DEBUG "libThunderWebSocket.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS ThunderWebSocket::ThunderWebSocket )
list(APPEND _IMPORT_CHECK_FILES_FOR_ThunderWebSocket::ThunderWebSocket "${_IMPORT_PREFIX}/lib/libThunderWebSocket.so.5.3.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
