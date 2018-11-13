#! /bin/bash

# if mpirun does not launch all ranks via ssh, break out of container
exec ssh localhost singularity "$@"
