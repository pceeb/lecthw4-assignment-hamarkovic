#!/bin/bash
# This script splits a genomic file into 3 separate files corresponding to the lines for the genes on chromosomes 2, 3, and 21.
# It requires the file to split as an input.
# sample input: $ sh Split_GTF.sh hg19.gtf

mkdir chr2_gtf
grep -P "chr2\t" $1 > chr2_gtf/chr2.gtf
mkdir chr3_gtf
grep -P "chr3\t" $1 > chr3_gtf/chr3.gtf
mkdir chr21_gtf
grep -P "chr21\t" $1 > chr21_gtf/chr21.gtf
