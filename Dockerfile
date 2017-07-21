FROM alpine:latest

ENV USER JPS
RUN apk --update add alpine-sdk sudo vim && rm -rf /var/cache/apk/*
RUN adduser -h /home/$USER -s /bin/sh -D $USER $USER && echo $USER "ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USER 
WORKDIR /home/$USER
COPY entrypoint.sh /home/$USER/entrypoint.sh

ENTRYPOINT "/home/$USER/entrypoint.sh"
