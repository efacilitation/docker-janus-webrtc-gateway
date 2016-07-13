# About

-   This image contains the janus webrtc gateway from meetecho ([https://github.com/meetecho/janus-gateway](https://github.com/meetecho/janus-gateway))

-   It uses the stun server from twilio ([https://www.twilio.com/stun-turn](https://www.twilio.com/stun-turn))

-   This repository is published at [https://hub.docker.com/r/efacilitation/docker-janus-webrtc-gateway/
](https://hub.docker.com/r/efacilitation/docker-janus-webrtc-gateway/)

## Limitations

Disables RabbitMQ, Admin and Secure Websockets

## Build

`docker build -t efacilitation/docker-janus-webrtc-gateway`

## Ports

| Port   | Description   |
|--------|---------------|
| 80     | HTML-Examples |
| 8088   | RESTful API   |
| 8188   | WebSocket API |

## Environment variables

Not environment variables are needed for this image.

## Linked Containers

This container does not need any container linked to.

## Run

`docker run -d -p 80:80 -p 8088:8088 -p 8188:8188 efacilitation/docker-janus-webrtc-gateway:latest`
