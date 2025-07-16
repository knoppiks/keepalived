FROM alpine:3.22.1@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

ENV KEEPALIVED_VERSION="2.3.1-r0"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl

CMD ["/usr/sbin/keepalived", "-d", "-D", "-S", "7", "-f", "/etc/keepalived/keepalived.conf", "--dont-fork", "--log-console"]
