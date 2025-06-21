cmake_minimum_required(VERSION 3.10)
project(Tutorial VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

configure_file(TutorialConfig.h.in TutorialConfig.h)

add_executable(Tutorial tutorial.cxx)

# Extra stuff I added in:
# Set build-system options
set(COMPILER_OPTIONS_TARGET Tutorial)
include(CompilerOptions.cmake)

# Note that PROJECT_BINARY_DIR is set to the root of the _build_ directory
# in which CMake is invoked.
target_include_directories(Tutorial PUBLIC
   "${PROJECT_BINARY_DIR}"
   )
