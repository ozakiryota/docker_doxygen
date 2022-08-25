#!/bin/bash

image="doxygen"
tag="latest"

docker build . \
    -t $image:$tag