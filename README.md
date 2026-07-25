# rnaseq-fastq-to-counts
rna-seq preprocessing pipeline, salmon vs star quantification

## Question: 
Does the choice between alignment-based and pseudo-alignment quantification meaningfully change gene counts and downstream DE results?

This project builds a full RNA-seq preprocessing pipeline from raw FASTQ files, QC, trimming, alignment/pseudo-alignment, quantification to directly compare two of the field's standard approaches (STAR+featureCounts vs. Salmon) on the same dataset, rather than treating either as a black box
