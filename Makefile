#FLAGS=--sandbox

BUILDTYPE=Release
SUFFIX=
ifneq ($(debug),)
BUILDTYPE="Debug"
SUFFIX=-dbg
endif

%$(SUFFIX).sif: Singularity.%
	SUFFIX=$(SUFFIX) BUILDTYPE=$(BUILDTYPE) singularity build  -f -F $(FLAGS) $@ $<

%.sif: Singularity.%
	singularity build  -f -F $(FLAGS) $@ $<


all: vistle-server$(SUFFIX).sif vistle-client$(SUFFIX).sif

vistle-client$(SUFFIX).sif: covise.sif

vistle-server$(SUFFIX).sif: covise.sif

covise.sif: covise-deps.sif

covise-deps.sif: centos7.sif osg-find-coin.diff embree-usr-symlink-v2.17.x.diff

clean:
	$(RM) *.sif
