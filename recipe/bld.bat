cmake -G "MinGW Makefiles" -B build -S %SRC_DIR% ^
      -D CMAKE_BUILD_TYPE="Release" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH=%LIBRARY_PREFIX%

mingw32-make -C build install

mkdir %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\Binaries\mystran.exe %LIBRARY_PREFIX%\bin\mystran.exe