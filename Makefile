#FLAGS=--sandbox

%.sif: Singularity.%
	singularity build -F $(FLAGS) $@ $<


all: vistle.sif

vistle.sif: vistle-deps.sif

vistle-deps.sif: covise.sif

covise.sif: covise-deps.sif

covise-deps.sif: centos7.sif

clean:
	$(RM) *.sif
