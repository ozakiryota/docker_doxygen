#!/bin/bash

xhost +

image="doxygen"
tag="latest"

docker run \
	-it \
	--rm \
	-e "DISPLAY" \
	-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	-v $(pwd)/mount:/root/doxygen_ws \
	$image:$tag