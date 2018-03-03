#!/bin/sh

docker build -t pylambdalib .
docker run -v "`pwd`/build":/tmp/site-packages --rm pylambdalib
