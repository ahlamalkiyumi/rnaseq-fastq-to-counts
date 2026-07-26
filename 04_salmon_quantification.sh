#!/bin/bash

salmon quant \
-i reference/salmon_chr21_index \
-l A \
-1 trimmed_SRR390728_1.fastq.gz \
-2 trimmed_SRR390728_2.fastq.gz \
-p 4 \
--validateMappings \
-o salmon_chr21_quant