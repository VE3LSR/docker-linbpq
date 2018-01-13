#!/bin/bash

source docker-vars.sh

rm BPQNODES.dat; touch BPQNODES.dat
rm logs

sudo docker rm $APP
sudo docker run -it \
    --name $APP \
    -p 445:445 \
    -v $PWD/bpq32.cfg:/opt/linbpq/bpq32.cfg \
    $NAME ./start.sh

