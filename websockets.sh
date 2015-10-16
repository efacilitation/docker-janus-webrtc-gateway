cd ~
git clone git://git.libwebsockets.org/libwebsockets
cd libwebsockets
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make && sudo make install