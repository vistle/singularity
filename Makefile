#FLAGS=--sandbox

%.sif: Singularity.%
	singularity build -F $(FLAGS) $@ $<


all: vistle.sif

vistle.sif: vistle-deps.sif singularity.sh

vistle-deps.sif: covise.sif embree-usr-symlink-v2.17.x.diff

covise.sif: covise-deps.sif

covise-deps.sif: centos7.sif osg-find-coin.diff

clean:
	$(RM) *.sif
