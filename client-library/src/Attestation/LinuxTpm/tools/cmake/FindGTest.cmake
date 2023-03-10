# Try to find GTest
find_path(GTEST_INCLUDE_DIR NAMES gtest PATHS ${SYSTEM_LIBRARY_PREFIX}/usr/local/include ${SYSTEM_LIBRARY_PREFIX}/usr/include NO_DEFAULT_PATH)

set(GTEST_LIB_PATHS ${SYSTEM_LIBRARY_PREFIX}/usr/local/lib ${SYSTEM_LIBRARY_PREFIX}/usr/lib ${SYSTEM_LIBRARY_PREFIX}/usr/lib/${CMAKE_LIBRARY_ARCHITECTURE})
find_library(GTEST_LIBRARY NAMES libgtest gtest PATHS ${GTEST_LIB_PATHS} NO_DEFAULT_PATH)
find_library(GTEST_MAIN_LIBRARY NAMES libgtest_main gtest_main PATHS ${GTEST_LIB_PATHS} NO_DEFAULT_PATH)

set(GTEST_LIBRARIES ${GTEST_LIBRARY} ${GTEST_MAIN_LIBRARY})
set(GTEST_INCLUDE_DIRS ${GTEST_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GTEST DEFAULT_MSG GTEST_LIBRARY GTEST_MAIN_LIBRARY GTEST_INCLUDE_DIR)
