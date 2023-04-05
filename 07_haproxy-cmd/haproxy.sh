#!/bin/bash

docker network create mynetwork

docker run -d --name web1 --net mynetwork jmalloc/echo-server
docker run -d --name web2 --net mynetwork jmalloc/echo-server
docker run -d --name web3 --net mynetwork jmalloc/echo-server

docker run -d --name haproxy --net mynetwork \
-v $(pwd):/usr/local/etc/haproxy:ro \
-p 80:80 -p 8404:8404 \
haproxytech/haproxy-alpine:2.4
