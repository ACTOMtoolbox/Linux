#!/bin/bash
TIMESTAMP=$(date +%Y%m%d%H%M%S)
title=Run-$TIMESTAMP

mkdir -p $title
cd $title

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e systemOS=lin --mount type=bind,source="$(pwd)",target=/srv/actom-run/input actomtoolbox/actom-run

rm -r Run-All.bat
sh Run-All.sh lin
mkdir -p logs
mv Run-All.sh logs/Run-All.sh
