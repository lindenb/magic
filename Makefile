.PHONY:all compile tests

all: tests

tests: bioinfo.mgc
	file -z -m $< test/*

compile: bioinfo.mgc

bioinfo.mgc :bioinfo
	file -C -m $<

