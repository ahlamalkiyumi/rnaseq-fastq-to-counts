# rnaseq-fastq-to-counts
rna-seq preprocessing pipeline, salmon vs star quantification

## Question: 
How does RNA-seq quantification strategy influence transcript abundance estimation?

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

## Observation

#### RNA-seq Quality Control Summary:
 
The QC analysis showed overall high sequencing quality with consistent base quality scores across read positions. Minor sequence content bias was observed at the first ~10 bp, likely due to random hexamer priming artifacts rather than technical issues. Adapter contamination was low, indicating that trimming would serve as a cleanup step rather than correcting major quality problems.

The dataset showed high base quality; however, reads were short (36 bp) with a small insert size (~31 bp), indicating substantial paired-end overlap. While suitable for QC demonstration, longer-read RNA-seq datasets are preferable for robust transcript-level quantification.

#### After trimming:

Filtering result:
reads passed filter: 12997358
reads failed due to low quality: 1058064
reads failed due to too many N: 301154
reads failed due to too short: 576
reads failed due to adapter dimer: 0
reads with adapter trimmed: 49431
bases trimmed due to adapters: 219747
Duplication rate: 3.94453%
Insert size peak (evaluated by paired-end reads): 31

Pass rate: 12,997,358 passed out of ~14.9M total reads. That's a solid, healthy pass rate for real sequencing data.
Duplication rate is low, which is good.
A peak of 31bp means the reads (36bp each) are almost entirely overlapping each other, read 1 and read 2 are sequencing nearly the same, very short fragment from both ends, rather than reading two ends of a longer molecule with unread sequence in between.
