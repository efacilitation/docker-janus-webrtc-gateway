FROM ubuntu:14.04
MAINTAINER Philip Shaw <philip.shaw@reddersky.com>
# Copy installation scripts in
ADD *.sh .
# Prepare the system
RUN apt-get update -y && apt-get upgrade -y
# Install dependencies

RUN ./dependencies.sh
# Install extras
RUN apt-get install -y wget make git doxygen graphviz
