#!/bin/bash


#create reference file 
mkdir reference
cd reference

#Download chromosome 21 FASTA
wget https://ftp.ensembl.org/pub/release-115/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.chromosome.21.fa.gz

#Unzip
gunzip Homo_sapiens.GRCh38.dna.chromosome.21.fa.gz


#Download annotation GTF
wget https://ftp.ensembl.org/pub/release-115/gtf/homo_sapiens/Homo_sapiens.GRCh38.115.chr.gtf.gz

#Unzip
gunzip Homo_sapiens.GRCh38.115.chr.gtf.gz

#Extract chromosome 21 annotation
awk '$1=="21"' Homo_sapiens.GRCh38.115.chr.gtf > chr21.gtf

#indexing
gffread \
-w chr21_transcripts.fa \
-g Homo_sapiens.GRCh38.dna.chromosome.21.fa \
chr21.gtf

salmon index -t chr21_transcripts.fa -i salmon_chr21_index -k 31
