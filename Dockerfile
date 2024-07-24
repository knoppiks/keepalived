FROM alpine:3.20.2

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

# renovate: datasource=repology depName=alpine_3_19/keepalived
ENV KEEPALIVED_VERSION="2.2.8-r0"

# renovate: datasource=repology depName=alpine_3_19/curl
ENV CURL_VERSION="8.8.0-r0"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl=${CURL_VERSION}

ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
