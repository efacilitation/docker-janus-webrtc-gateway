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
# Update libsrtp to 1.5.0 to avoid Janus issues with the default 1.4.x
RUN ./update-libsrtp.sh
