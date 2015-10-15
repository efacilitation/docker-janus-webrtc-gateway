FROM ubuntu:14.04
MAINTAINER Philip Shaw <philip.shaw@reddersky.com>
# Prepare the system
RUN apt-get update -y
RUN apt-get upgrade -y
# Install dependencies
RUN apt-get install -y libmicrohttpd-devel
RUN apt-get install -y jansson-devel
RUN apt-get install -y libnice-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libsrtp-dev
RUN apt-get install -y libsofia-sip-ua-dev
RUN apt-get install -y libglib2.0-dev
RUN apt-get install -y libopus-dev
RUN apt-get install -y libogg-dev
RUN apt-get install -y libini-config-dev
RUN apt-get install -y libcollection-dev
RUN apt-get install -y pkg-config
RUN apt-get install -y gengetopt
RUN apt-get install -y libtool
RUN apt-get install -y automake
RUN apt-get install -y wget
RUN apt-get install -y make
RUN apt-get install -y git
RUN apt-get install -y doxygen graphviz
