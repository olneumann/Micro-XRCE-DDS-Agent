# Findlibmetal.cmake
# This module tries to find the libmetal library

find_path(LIBMETAL_INCLUDE_DIR NAMES metal/sys.h PATHS ${CMAKE_FIND_ROOT_PATH})
find_library(LIBMETAL_LIB NAMES metal PATHS ${CMAKE_FIND_ROOT_PATH})
get_filename_component(LIBMETAL_LIB_DIR ${LIBMETAL_LIB} DIRECTORY)

# handle the QUIETLY and REQUIRED arguments and set HUGETLBFS_FOUND to TRUE if
# all listed variables are TRUE
include (FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS (libmetal DEFAULT_MSG LIBMETAL_LIB LIBMETAL_INCLUDE_DIR)

if (LIBMETAL_FOUND)
  set (LIBMETAL_LIBS ${LIBMETAL_LIB})
  set (LIBMETAL_INCLUDE_DIRS ${LIBMETAL_INCLUDE_DIR})
endif (LIBMETAL_FOUND)

mark_as_advanced (LIBMETAL_LIB LIBMETAL_INCLUDE_DIR LIBMETAL_LIB_DIR)