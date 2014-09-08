magic
=====

file command's magic pattern file for bioinformatics

Motivation: https://www.biostars.org/p/111642 "Tool that detects data types"

## Compiling the magic file 'bioinfo.mgc'

```bash
$ make
```

## Tested with **`file`**:

``` bash
$ file --version
file-5.09
```

## Examples

```bash
$ file -z -m bioinfo.mgc ex1.sam.gz
ex1.sam.gz: SAM file v1.0 sorted on coordinates (data)
$ file -z -m bioinfo.mgc file.bam
file.bam: BAM file v1.0 (data)
$ file -z -m bioinfo.mgc file.fasta
file.fasta: Fasta DNA sequence
$ file -z -m bioinfo.mgc file.vcf
file.vcf: VCF format 4.1
$ file -z -m bioinfo.mgc file.gz.tbi
file.gz.tbi: Tabix index file v1.0 (data) 
```


## See also:

* **magic** - file command's magic pattern file  http://linux.die.net/man/5/magic
* **file** - determine file type http://linux.die.net/man/1/file 
* github repo for **file** : https://github.com/file/file

## Author

Pierre Lindenbaum PhD
@yokofakun



