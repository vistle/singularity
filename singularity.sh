#! /bin/bash

# if mpirun does not launch all ranks via ssh, break out of container
if [ -z "$DISPLAY" ]; then
    ssh localhost singularity "$@" || echo "Failed to launch singularity on localhost ($(hostname))"
else
    ssh localhost "DISPLAY=$DISPLAY" singularity "$@" || echo "Failed to launch singularity on localhost ($(hostname))"
fi
