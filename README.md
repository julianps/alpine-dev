# alpine-dev
A mini-docker project, providing an alpine docker container to play around in the running container.

#Installation

```git clone https://github.com/julianps/alpine-dev.git```

#Usage

Just change the username in the Dockerfile

```ENV USER $YourName$```

change the variables in the `start-alpine-dev` script:

```
container_name="jps-alpine-dev"
image_name="jps/alpine"
```
