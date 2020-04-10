#!/bin/bash
echo -e "Start docker mumbled"
docker run  -i -t --rm -p 27016:27016 --name Mumbled mumbled /bin/sh
