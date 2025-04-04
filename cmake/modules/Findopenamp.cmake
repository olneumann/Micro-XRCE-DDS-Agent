# Findopenamp.cmake
# This module tries to find the OpenAMP library

# Check for OpenAMP headers
find_path(OPENAMP_INCLUDE_DIR NAMES openamp/open_amp.h
    PATHS ${CMAKE_FIND_ROOT_PATH}
)

# Check for OpenAMP library
find_library(OPENAMP_LIB NAMES open_amp
    PATHS ${CMAKE_FIND_ROOT_PATH}
)

# Get the directory of the library
get_filename_component(OPENAMP_LIB_DIR ${OPENAMP_LIB} DIRECTORY)

# Handle the QUIETLY and REQUIRED arguments and set OPENAMP_FOUND to TRUE if all variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(openamp DEFAULT_MSG OPENAMP_LIB OPENAMP_INCLUDE_DIR)

# If found, set variables
if(OPENAMP_FOUND)
    set(OPENAMP_LIBS ${OPENAMP_LIB})
    set(OPENAMP_INCLUDE_DIRS ${OPENAMP_INCLUDE_DIR})
endif()

# Mark the variables as advanced
mark_as_advanced(OPENAMP_LIB OPENAMP_INCLUDE_DIR OPENAMP_LIB_DIR)