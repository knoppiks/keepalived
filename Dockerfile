FROM alpine:3.22.0

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

ENV KEEPALIVED_VERSION="2.3.1-r0"
ENV CURL_VERSION="8.14.1-r1"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl=${CURL_VERSION}

CMD ["/usr/sbin/keepalived", "-d", "-D", "-S", "7", "-f", "/etc/keepalived/keepalived.conf", "--dont-fork", "--log-console"]
