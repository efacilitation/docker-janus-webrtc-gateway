cd ~
git clone https://github.com/meetecho/janus-gateway.git
git checkout v0.1.2
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq
make
make install
make configs
