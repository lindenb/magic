.PHONY:all compile tests
FORMATS=abi bam bed bigbed bigwig blast fasta fastq gtf hapmap liftOver R tabix twobit ucsc vcf wig
PATTERNS=$(addprefix patterns/,${FORMATS})
all: tests

tests: bioinfo.mgc
	file -z -m $< test/*

compile: bioinfo.mgc

bioinfo.mgc : ${PATTERNS}
	cat $^ > $(basename $@)
	file -C -m $(basename $@)
	rm -f $(basename $@)
