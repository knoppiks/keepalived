FROM alpine:3.21.2

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

# renovate: datasource=repology depName=alpine_3_21/keepalived
ENV KEEPALIVED_VERSION="2.3.1-r0"

# renovate: datasource=repology depName=alpine_3_21/curl
ENV CURL_VERSION="8.11.1-r1"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl=${CURL_VERSION}

CMD ["/usr/sbin/keepalived", "-d", "-D", "-S", "7", "-f", "/etc/keepalived/keepalived.conf", "--dont-fork", "--log-console"]
