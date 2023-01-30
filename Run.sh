#!/bin/bash
TIMESTAMP=$(date +%Y%m%d%H%M%S)
title=Run-$TIMESTAMP

mkdir -p $title
cd $title

#docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --mount type=bind,source="$(pwd)",target=/srv/actom-run/input actomtoolbox/actom-run

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --mount type=bind,source="$(pwd)",target=/srv/actom-run/input actomtoolbox/actom-run

sh Run-All.sh
rm -r Run-All.sh
