![R](https://img.shields.io/badge/r-%23276DC3.svg?style=for-the-badge&logo=r&logoColor=white) ![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

# Single-cell PAS-seq

This workflow describes how to analyze data produced by a single-cell plate-based protocol inspired by **PAS-seq2** and **CEL-Seq2** protocols:
> Yoon Y, Soles LV, Shi Y. PAS-seq 2: A fast and sensitive method for global profiling of polyadenylated RNAs. Methods Enzymol. 2021;655:25-35. doi: 10.1016/bs.mie.2021.03.013. Epub 2021 Apr 23. PMID: 34183125.
> Hashimshony, T., Senderovich, N., Avital, G. et al. CEL-Seq2: sensitive highly-multiplexed single-cell RNA-Seq. Genome Biol 17, 77 (2016). https://doi.org/10.1186/s13059-016-0938-8

The library prep protocol can be found at **LW-100 test new single cell PASseq protocol** in eLabFTW journal, Mulder group.

The fastq data were mapped by kallistobus (see _mapping-data-kallistobus.sh_, plate barcodes can be found in _barcodes384.txt_ file). 
The kallistobus output, cell_x_genes.mtx matrix, was used for further analysis in R (see _scPASseq.Rmd_). Two Rebecca's scripts for ERCC and UMI layout in plate were used in the R code (_qc_ercc_384plot.R_ and _qc_umis_384plot.R_).
Further explanation on kallistobus package and settings can be found in Rebecca's paper
>  https://www.biorxiv.org/content/10.1101/2024.04.09.588683v2 in section COMPUTATIONAL METHODS, Processing and integration of CEL-Seq2 scRNA-sequencing data 
![R2_like-CELseq2](https://github.com/user-attachments/assets/88cab12e-4d1a-4405-876f-6a085b09eef2)
