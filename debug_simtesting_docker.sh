#!/bin/bash
xhost +local:docker
docker run -w /home/simtesting/eclipse -v /var/run/docker.sock:/var/run/docker-host.sock -it --net=host -e DISPLAY=$DISPLAY simtesting-wizard-discoverpaths /bin/bash
