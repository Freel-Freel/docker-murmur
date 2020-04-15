FROM alpine:latest
MAINTAINER Lopatin Roman <freel@botans.org>

RUN apk add --no-cache murmur

ADD ./mumble-server.ini /var/lib/murmur/

WORKDIR /var/lib/murmur
CMD ["murmurd", "-ini", "mumble-server.ini", "-fg"]

EXPOSE 64738 64738/udp
