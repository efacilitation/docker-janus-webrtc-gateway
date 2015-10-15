FROM ubuntu:14.04
MAINTAINER Philip Shaw <philip.shaw@reddersky.com>
# Prepare the system
RUN apt-get update -y
RUN apt-get upgrade -y
# Install dependencies
apt-get install -y libmicrohttpd-devel
apt-get install -y jansson-devel
apt-get install -y libnice-dev
apt-get install -y libssl-dev
apt-get install -y libsrtp-dev
apt-get install -y libsofia-sip-ua-dev
apt-get install -y libglib2.0-dev
apt-get install -y libopus-dev
apt-get install -y libogg-dev
apt-get install -y libini-config-dev
apt-get install -y libcollection-dev
apt-get install -y pkg-config
apt-get install -y gengetopt
apt-get install -y libtool
apt-get install -y automake
apt-get install -y wget
apt-get install -y make
apt-get install -y git
apt-get install -y doxygen graphviz
