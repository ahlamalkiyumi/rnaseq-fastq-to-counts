#!/bin/bash

# RNA-seq Quality Control

#Dataset Human paired-end RNA-seq sample SRR390728

#compress (gzip) FASTQ files so they match the .fastq.gz format used by 
most tools
gzip SRR390728_1.fastq
gzip SRR390728_2.fastq

#check
gzcat SRR390728_1.fastq.gz | head -8

#create output folder
mkdir fastqc_output

#Run FastQC and MultiQC
fastqc SRR390728_1.fastq.gz SRR390728_2.fastq.gz -o fastqc_output
multiqc fastqc_output -o multiqc_output
open multiqc_output/multiqc_report.html

