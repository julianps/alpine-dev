# Installation

```git clone https://github.com/julianps/alpine-dev.git```

# Usage

Just change the username in the Dockerfile

```ENV USER $YourName$```

change the variables in the `start-alpine-dev` script:

```
container_name="jps-alpine-dev"
image_name="jps/alpine"
```

# Conveniance

add the following to your `~/.bash_profile` and change the $LOCATION, to start the container with the command `alpine` from the commandline.

```
alias alpine=alpine-dev

function alpine-dev(){
  cd $LOCATION 
  ./start-alpine-dev.sh
}
```
