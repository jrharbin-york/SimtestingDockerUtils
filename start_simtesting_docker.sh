#!/bin/bash
xhost +local:docker
# Need port forwarding for Pyro nameserver
docker run -w /home/simtesting/eclipse -v simtesting_home:/home/simtesting -v /var/run/docker.sock:/var/run/docker-host.sock -it --net=host -e DISPLAY=$DISPLAY simtesting /bin/bash
