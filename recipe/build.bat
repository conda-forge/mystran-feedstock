@echo on

set "CC=clang-cl"
set "CXX=clang-cl"

cmake -B build -S %SRC_DIR% ^
      -D CMAKE_BUILD_TYPE="Release" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH=%LIBRARY_PREFIX%

if %ERRORLEVEL% neq 0 exit 1

cmake --build build --parallel 2
if %ERRORLEVEL% neq 0 exit 1

cmake --install build --parallel 2
if %ERRORLEVEL% neq 0 exit 1

mkdir %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\Binaries\mystran.exe %LIBRARY_PREFIX%\bin\mystran.exe
