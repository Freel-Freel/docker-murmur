FROM alpine:latest
MAINTAINER Lopatin Roman <freel@botans.org>

ARG USER=murmur
ARG UID=100
ARG GID=101

RUN apk add --no-cache murmur

COPY --chown=${UID}:${GID} mumble-server.ini /var/lib/${USER}

USER ${UID}:${GID}
WORKDIR /var/lib/${USER}
ENTRYPOINT ["murmurd", "-ini", "mumble-server.ini", "-fg"]
CMD []

EXPOSE 64738 64738/udp
