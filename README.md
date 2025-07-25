# Description
This directory contains source code examples for the CMake Tutorial. Each step has its own subdirectory containing code that may be used as a starting point. The tutorial examples are progressive so that each step provides the complete solution for the previous step.

### How To Build Using w64devkit on Windows
```bash
# From the root of the repository (no need to `mkdir build && cd build`)
cmake -DCMAKE_BUILD_TYPE=<Release|Debug> -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_C_COMPILER:FILEPATH=/c/w64devkit/bin/gcc.exe -DCMAKE_CXX_COMPILER:FILEPATH=/c/w64devkit/bin/g++.exe <-D list for a project) --no-warn-unused-cli -S . -B 'build' -G "Unix Makefiles"
```
