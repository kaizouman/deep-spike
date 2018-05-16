#!/bin/bash 
# Absolute path to this script, e.g. /home/user/bin/foo.sh
THISSCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
THISPATH=$(dirname "$THISSCRIPT")

# Launch local script in tensorflow docker container
docker run -it -v ${THISPATH}:/deep-spike tensorflow/tensorflow:latest-devel-py3 sh /deep-spike/run.sh
