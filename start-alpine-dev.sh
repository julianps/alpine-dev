#!/bin/bash
docker stop jps-alpine-dev
docker rmi jps/alpine -f
docker build . -t jps/alpine
docker rm jps-alpine-dev
docker run -d --name jps-alpine-dev jps/alpine
docker exec -ti jps-alpine-dev /bin/sh
