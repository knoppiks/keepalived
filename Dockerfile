FROM alpine:3.13
MAINTAINER Jonas Wagner <jwagner@knoppiks.de>

RUN apk add --no-cache keepalived=2.2.0-r0 curl

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
