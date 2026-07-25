#!/bin/bash 

#trims bases below Q20 from read ends
#discards reads that end up shorter than 25bp after trimming 


fastp \
  -i SRR390728_1.fastq.gz \
  -I SRR390728_2.fastq.gz \
  -o trimmed_SRR390728_1.fastq.gz \
  -O trimmed_SRR390728_2.fastq.gz \
  --detect_adapter_for_pe \
  --qualified_quality_phred 20 \ 
  --length_required 25 \
  --html fastp_report_SRR390728.html \
  --json fastp_report_SRR390728.json

