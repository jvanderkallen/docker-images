#!/bin/bash
xhost local:root

docker run \
	-d \
	--rm \
	--net host \
	-v /etc/localtime:/etc/localtime:ro \
	--security-opt seccomp=$PWD/seccomp.json \
	--device /dev/snd \
	--device /dev/dri \
	-e DISPLAY=unix$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /dev/shm:/dev/shm \
	jvanderkallen/chrome