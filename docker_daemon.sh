#!/bin/bash
echo -e "Start background docker Mumbled"

docker run -d --rm \
            -p 64738:64738 \
            -p 64738:64738/udp \
            --name Mumbled mumbled
