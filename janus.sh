cd ~
git clone https://github.com/meetecho/janus-gateway.git
git checkout v0.2.0
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt
make
make install
make configs
