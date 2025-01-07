cmake -B build -S ${SRC_DIR} \
      -D CMAKE_BUILD_TYPE="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX

cmake --build build --parallel 2
cmake --install build --parallel 2

mkdir -p $PREFIX/bin
cp $SRC_DIR/Binaries/mystran $PREFIX/bin/mystran