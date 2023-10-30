FROM alpine:3.18.4

LABEL org.opencontainers.image.authors="Jonas Wagner <jwagner@knoppiks.de>"

RUN apk add --no-cache keepalived=2.2.8-r0 curl

ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
