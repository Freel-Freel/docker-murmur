FROM alpine:3.10
MAINTAINER Lopatin Roman <freel@botans.org>

RUN apk add --no-cache murmur

ADD ./mumble-server.ini /data/
VOLUME /data
ENV MUMBLE_INI /data/mumble-server.ini

WORKDIR /data
CMD ["murmurd", "-ini", "$MUMBLE_INI", "-fg"]

EXPOSE 64738 64738/udp
