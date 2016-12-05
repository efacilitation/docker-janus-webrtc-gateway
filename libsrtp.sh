cd ~
git clone https://github.com/cisco/libsrtp.git
cd libsrtp
git checkout v1.5.0
./configure --prefix=/usr --enable-openssl
make libsrtp.so
sudo make install
