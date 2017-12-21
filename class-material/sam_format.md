---
layout: page
title: SAM alignment format
---

Files in the SAM format consist of a header section and an alignment section. Because SAM files are plain text (unlike their binary counterpart, BAM), we can take a peek at a few lines of the header with head:

~~~
$ head -n 10 celegans.sam
@SQ SN:I LN:15072434
@SQ SN:II LN:15279421
@SQ SN:III LN:13783801
@SQ SN:IV LN:17493829
@SQ SN:MtDNA LN:13794
@SQ SN:V LN:20924180
@SQ SN:X LN:17718942
@RG ID:VB00023_L001 SM:celegans-01
@PG ID:bwa PN:bwa VN:0.7.10-r789 [...] I_2011868_2012306_0:0:0_0:0:0_2489 83 I 2012257 40 50M [...]
~~~

Header lines contain vital metadata about the reference sequences, read and sample information, and (optionally) processing steps and comments. Each header line begins with an @, followed by a two-letter code that distinguishes the different type of metadata records in the header. Following this two-letter code are tab-delimited key- value pairs in the format KEY:VALUE (the SAM format specification names these tags and values). The celegans.sam file contains the most common header records types you’ll encounter in SAM/BAM files. Let’s step through some of the header compo‐ nents in more detail:

- @SQ header entries store information about the reference sequences (e.g., the chromosomes if you’ve aligned to a reference genome). The required key-values are SN, which stores the sequence name (e.g., the C. elegans chromosome I), and LN, which stores the sequence length (e.g., 15,072,434 bases). All separate sequen‐ ces in your reference have a corresponding entry in the header.
- @RG header entries contain important read group and sample metadata. The read group identifier ID is required and must be unique. This ID value contains infor‐ mation about the origin of a set of reads. Some software relies on read groups to indicate a technical groups of reads, to account for batch e ects (undesirable technical artifacts in data). Consequently, it’s beneficial to create read groups related to the specific sequencing run (e.g., ID could be related to the name of the sequencing run and lane).
Although ID is the only required key in @RG headers, in practice your SAM/BAM files should also keep track of sample information using the SM key. Sample infor‐ mation is the metadata about your experiment’s samples (e.g., individual, treat‐ ment group, replicate, etc.). Finally, it’s worth noting that the SAM format specification also allows a PL key for indicating sequencing platform such as ILLUMINA, PACBIO, and so on. (See the specification for a full list of valid values.) Read group, sample, and platform information should be added to your SAM/BAM during alignment (and aligners have options for this).
- @PG header entries contain metadata about the programs used to create and pro‐ cess a set of SAM/BAM files. Each program must have a unique ID value, and metadata such as program version number (via the VN key) and the exact com‐ mand line (via the CL key) can be saved in these header entries. Many programs will add these lines automatically.

This is the first line of the alignment section (because this line does not begin with @). We’ll cover the alignment section in more detail in the following section.
This is just an introduction to the basics of the SAM format’s header section; see the [SAM format specification](http://samtools.github.io/hts-specs/) for more detail.

Although head works to take a quick peek at the top of a SAM file, keep the following points in mind:
- head won’t always provide the entire header. 
- It won’t work with binary BAM files.  

The standard way of interacting with SAM/BAM files is through the **SAMtools** command-line program (**samtools**), which we’ll use both through galaxy in lecture 14 & 15 and at the command-line in subsequent lectures.
