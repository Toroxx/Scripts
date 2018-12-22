# libplist
git clone http://git.libimobiledevice.org/libplist.git
cd libplist/
DOS2UNIX *
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig ./autogen.sh --host=x86_64-w64-mingw32

make
make install

cd ..
# libusbmuxd
git clone http://git.sukimashita.com/libusbmuxd.git
cd libusbmuxd/
DOS2UNIX *
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig ./autogen.sh --host=x86_64-w64-mingw32 --without-cython
make
make install

cd ..
# libimobiledevice
git clone http://git.libimobiledevice.org/libimobiledevice.git
cd libimobiledevice/
DOS2UNIX *
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig ./autogen.sh  --host=x86_64-w64-mingw32 --without-cython
make
make install

cd ..
# idevicelocation
git clone https://github.com/JonGabilondoAngulo/idevicelocation.git
cd idevicelocation/
DOS2UNIX *
cd m4
wget https://raw.githubusercontent.com/libimobiledevice/libimobiledevice/master/m4/as-compiler-flag.m4
cd ..
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig ./autogen.sh  --host=x86_64-w64-mingw32
make
make install
