Singularity containers for COVISE, OpenCOVER and Vistle
=======================================================

This repository contains definition files for building [Singularity][singularity] containers
for [COVISE][covise], [OpenCOVER][cover], and [Vistle][vistle].
They are based on [Centos 7][centos].
COVISE and OpenCOVER are built within the same container, and Vistle builds on
top of this.

Building
--------
* install singularity
* run ``sudo make`` inside this directory (super user access is required for building Singularity containers)

Using
-----
* running COVISE
    ``singularity run --nv covise.sif``
* running OpenCOVER
    ``singularity exec --nv covise.sif /usr/bin/opencover``
* running Vistle
    ``singularity run --nv vistle-client.sif``

If you do not use the proprietary NVidia driver, you should omit ``--nv`` from the command lines.
In all three cases, you can append files to be opened, to the command line.
Alternatively, you can just execute the containers directly, e.g.  ``./vistle-client.sif``.
Editing your ``run-singularity`` script will allow to change default parameters.


[singularity]: https://www.sylabs.io/singularity/
[covise]:      https://www.hlrs.de/covise
[cover]:       https://www.hlrs.de/opencover
[vistle]:      https://vistle.io
[centos]:      https://www.centos.org
