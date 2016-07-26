cd ~
git clone https://github.com/meetecho/janus-gateway.git
git checkout refcount
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq
make
make install
make configs
