FROM alpine:3.11
MAINTAINER Jonas Wagner <jwagner@knoppiks.de>

RUN apk add --no-cache keepalived=2.0.19-r0 curl=7.67.0-r0

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
