#!/bin/bash

source docker-vars.sh

sudo docker rm $APP
sudo docker run -it \
    --name $APP \
    -p 445:445 \
    -v $PWD/bpq32.cfg:/opt/linbpq/bpq32.cfg \
    $NAME

