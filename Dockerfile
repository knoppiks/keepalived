FROM alpine:3.20.3

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

# renovate: datasource=repology depName=alpine_3_20/keepalived
ENV KEEPALIVED_VERSION="2.2.8-r0"

# renovate: datasource=repology depName=alpine_3_20/curl
ENV CURL_VERSION="8.10.1-r0"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl=${CURL_VERSION}

ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
