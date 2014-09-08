.PHONY:all compile tests
PATTERNS=$(addprefix patterns/,bam  bed  fastq fasta  tabix  vcf bigwig bigbed)
all: tests

tests: bioinfo.mgc
	file -z -m $< test/*

compile: bioinfo.mgc

bioinfo.mgc : ${PATTERNS}
	cat $^ > $(basename $@)
	file -C -m $(basename $@)
	rm -f $(basename $@)
