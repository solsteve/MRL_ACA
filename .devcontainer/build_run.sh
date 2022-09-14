#!/bin/bash

docker build -t mrl_aca .

xhost -local:root

docker run -it --init --gpus=all --ipc=host \
--env="DISPLAY" --net=host \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--volume="$(pwd)/..:/workspace" \
mrl_aca bash
