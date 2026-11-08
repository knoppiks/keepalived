FROM alpine:3.24.4@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

ENV KEEPALIVED_VERSION="2.3.1-r0"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl

CMD ["/usr/sbin/keepalived", "-d", "-D", "-S", "7", "-f", "/etc/keepalived/keepalived.conf", "--dont-fork", "--log-console"]
