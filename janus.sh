cd ~
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
git checkout v0.2.0
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt
make
make install
make configs
