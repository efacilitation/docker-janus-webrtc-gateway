FROM ubuntu:14.04
MAINTAINER Philip Shaw <philip.shaw@reddersky.com>
# Prepare the system
RUN apt-get update -y && apt-get upgrade -y
# Install dependencies
RUN apt-get install -y libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev libini-config-dev libcollection-dev \
    pkg-config gengetopt libtool automake
# Install extras
RUN apt-get install -y wget make git doxygen graphviz
