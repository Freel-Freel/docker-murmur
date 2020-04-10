FROM alpine:latest
MAINTAINER Lopatin Roman <freel@botans.org>

ENV MURMUR_USER murmur
RUN apk add --no-cache murmur

ADD ./mumble-server.ini /var/lib/$MURMUR_USER
VOLUME /var/lib/$MURMUR_USER
ENV MUMBLE_INI /var/lib/$MURMUR_USER/mumble-server.ini

WORKDIR /var/lib/$MURMUR_USER
CMD ["murmurd", "-ini", "$MUMBLE_INI", "-fg"]

EXPOSE 64738 64738/udp
