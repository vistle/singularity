#! /bin/bash

# if mpirun does not launch all ranks via ssh, break out of container
ssh localhost singularity "$@" || echo "Failed to launch singularity on localhost ($(hostname))"
