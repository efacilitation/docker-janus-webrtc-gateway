FROM ubuntu:16.04
MAINTAINER Efa-GmbH <team@efa-gmbh.com>

# Copy installation scripts in
COPY *.sh ./

# Prepare the system
RUN ./setup.sh
# Install dependencies
RUN ./dependencies.sh
# Install extras
RUN ./extras.sh
# Install libsrtp 2.0.0 (To reduce risk of broken interoperability with future WebRTC versions)
RUN ./libsrtp.sh
# Upgrade libcurl to 7.50.2 for streaming plugin support for RTSP
RUN ./upgradelibcurl.sh
# Install usrsctp for data channel support
RUN ./usrsctp.sh
# Install websocket dependencies
RUN ./websockets.sh

# Copy the apache configuration files ready for when we need them
COPY apache2/*.conf ./
# Install and prepare apache
RUN ./apache.sh

# Clone, build and install the gateway
RUN ./janus.sh
# Put configs in place
COPY conf/*.cfg /opt/janus/etc/janus/

# Declare the ports we use
EXPOSE 80 7088 8088 8188

# Define the default start-up command
CMD ./startup.sh
