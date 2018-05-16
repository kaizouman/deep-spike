#!/bin/bash 
# Absolute path to this script, e.g. /home/user/bin/foo.sh
THISSCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
THISPATH=$(dirname "$THISSCRIPT")

# Build custom ops
make -C ${THISPATH}/cc

# Launch command from script directory since we use relative path when
# loading binary ops
cd ${THISPATH}
PYTHONPATH=${THISPATH}:${PYTHONPATH} python3 ${THISPATH}/bin/digit_binarized_quantized_weights.py
