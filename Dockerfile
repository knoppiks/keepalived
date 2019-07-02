FROM alpine:3.10
MAINTAINER Jonas Wagner <knoppizillin@gmx.de>

RUN apk add --no-cache keepalived=2.0.16-r0 curl=7.65.1-r0

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
