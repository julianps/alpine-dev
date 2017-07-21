#!/bin/bash

# Set some properties
container_name="jps-alpine-dev"
image_name="jps/alpine"

# Cleanup
docker stop $container_name 
docker rmi $image_name -f
docker rm $container_name

# Build image
docker build . -t $image_name 

# Start container from image 
docker run -d --name $container_name $image_name 

# Connect to container
docker exec -ti $container_name /bin/sh
