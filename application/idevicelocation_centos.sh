# libplist
git clone http://git.libimobiledevice.org/libplist.git
cd libplist/
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh 

make
make install

cd ..
# libusbmuxd
git clone http://git.sukimashita.com/libusbmuxd.git
cd libusbmuxd/
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh  
make
make install

cd ..
# libimobiledevice
git clone http://git.libimobiledevice.org/libimobiledevice.git
cd libimobiledevice/
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh
make
make install

cd ..
# idevicelocation
git clone https://github.com/JonGabilondoAngulo/idevicelocation.git
cd idevicelocation/
cd m4
wget https://raw.githubusercontent.com/libimobiledevice/libimobiledevice/master/m4/as-compiler-flag.m4
cd ..
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh
make
make install