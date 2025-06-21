# Compiler-Specific Options
if(NOT DEFINED COMPILER_OPTIONS_TARGET)
   message(FATAL_ERROR "COMPILER_OPTIONS_TARGET variable not set.")
endif()

target_compile_options(${COMPILER_OPTIONS_TARGET} PRIVATE
   $<$<CXX_COMPILER_ID:GNU,Clang>:
      -Wall;-Wextra;-Wpedantic;-Wpedantic-errors;-Wconversion;-Wdouble-promotion
      -fsanitize=bool;-fsanitize=enum
   >
   $<$<CXX_COMPILER_ID:MSVC>:
      /W4
   >
   )

# Got the following error when compiling /w /fsanitize=address:
#    error while loading shared libraries:
#       clang_rt.asan_dynamic-x86_64.dll:
#          cannot open shared object file: No such file or directory
#
#   $<$<CXX_COMPILER_ID:MSVC>:
#      /W4
#      /fsanitize=address
#   >

