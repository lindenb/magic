.PHONY:all compile tests
FORMATS=abi bam cram liftOver bed fastq fasta tabix vcf bigwig bigbed blast R gtf wig ucsc twobit hapmap 
PATTERNS=$(addprefix patterns/,${FORMATS})
all: tests

tests: bioinfo.mgc
	file -z -m $< test/*

compile: bioinfo.mgc

bioinfo.mgc : ${PATTERNS}
	cat $^ > $(basename $@)
	file -C -m $(basename $@)
	rm -f $(basename $@)
