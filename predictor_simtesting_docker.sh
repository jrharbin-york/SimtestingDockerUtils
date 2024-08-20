#!/bin/bash
xhost +local:docker
# Need port forwarding for Pyro nameserver
docker run -p 39222:39222 -p 9524:9524 -w /home/simtesting/eclipse -v simtesting_predictor:/home/simtesting -v /var/run/docker.sock:/var/run/docker.sock -it --net=host -e DISPLAY=$DISPLAY simtesting-predictor /bin/bash
