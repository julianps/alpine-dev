FROM alpine:latest
RUN apk --update add alpine-sdk sudo vim && rm -rf /var/cache/apk/*
RUN adduser -h /home/jps -s /bin/sh -D jps jps && echo "jps ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER jps 
WORKDIR /home/jps
COPY entrypoint.sh /home/jps/entrypoint.sh

ENTRYPOINT ["/home/jps/entrypoint.sh"]
