# docker-janus-gateway
Docker specification for Janus Gateway
Disables RabbitMQ, Admin and Secure Websockets
Currently suitable for LAN use only as no STUN server is specified

## Limitations
Demos, available on port 80, require the Janus API to be available on port 8088. As such, when spinning up a container, be sure to map this port directly rather than allowing it to be mapped to an ephemeral port.