cmake -B build -S ${SRC_DIR} -G "Ninja" \
      -D CMAKE_BUILD_TYPE="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX

ninja -C build install

mkdir -p $PREFIX/bin
cp $SRC_DIR/Binaries/mystran $PREFIX/bin/mystran