cd ~
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-websockets --disable-rabbitmq
make
make install
make configs