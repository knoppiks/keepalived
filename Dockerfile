FROM alpine:3.17
MAINTAINER Jonas Wagner <jwagner@knoppiks.de>

RUN apk add --no-cache keepalived=2.2.7-r2 curl

ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
