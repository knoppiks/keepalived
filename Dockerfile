FROM alpine:3.22.0@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

ENV KEEPALIVED_VERSION="2.3.1-r0"

RUN apk add --no-cache keepalived=${KEEPALIVED_VERSION} curl

CMD ["/usr/sbin/keepalived", "-d", "-D", "-S", "7", "-f", "/etc/keepalived/keepalived.conf", "--dont-fork", "--log-console"]
