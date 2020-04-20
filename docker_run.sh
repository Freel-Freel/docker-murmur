#!/bin/bash
echo -e "Start docker mumbled"
docker run  -i -t --rm \
            -p 64738:64738 \
            -p 64738:64738/udp \
            --name Mumbled mumbled &
