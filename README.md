# rnaseq-fastq-to-counts
rna-seq preprocessing pipeline, salmon vs star quantification

## Question: 
Does the choice between alignment-based and pseudo-alignment quantification meaningfully change gene counts and downstream DE results?

This project builds a full RNA-seq preprocessing pipeline from raw FASTQ files, QC, trimming, alignment/pseudo-alignment, quantification to directly compare two of the field's standard approaches (STAR+featureCounts vs. Salmon) on the same dataset, rather than treating either as a black box

## Dataset

- Organism: Homo sapiens
- Sequencing type: Paired-end RNA-seq
- Data source: NCBI Sequence Read Archive (SRA)
- Samples:SRR390728

Raw sequencing files:
- FASTQ format
- Forward reads (_1.fastq.gz)
- Reverse reads (_2.fastq.gz)
