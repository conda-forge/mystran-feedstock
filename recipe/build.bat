@echo on

set "CC=clang-cl"
set "CXX=clang-cl"

cmake -B build -S %SRC_DIR% ^
      -D CMAKE_BUILD_TYPE="Release" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH=%LIBRARY_PREFIX%

if %ERRORLEVEL% neq 0 exit 1

cmake --build build -j %NUMBER_OF_PROCESSORS%
if %ERRORLEVEL% neq 0 exit 1

cmake --install build
if %ERRORLEVEL% neq 0 exit 1

mkdir %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\Binaries\mystran.exe %LIBRARY_PREFIX%\bin\mystran.exe
