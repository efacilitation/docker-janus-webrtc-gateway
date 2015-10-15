FROM ubuntu:14.04
MAINTAINER Philip Shaw <philip.shaw@reddersky.com>
# Copy installation scripts in
COPY *.sh ./
# Prepare the system
RUN ./setup.sh
# Install dependencies
RUN ./dependencies.sh
# Install extras
RUN ./extras.sh
