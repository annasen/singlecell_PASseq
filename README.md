# Single-cell PAS-seq

This workflow describes how to analyze data produced by a single-cell plate-based protocol inspired by **PAS-seq2** and **CEL-Seq2** protocols:
> Yoon Y, Soles LV, Shi Y. PAS-seq 2: A fast and sensitive method for global profiling of polyadenylated RNAs. Methods Enzymol. 2021;655:25-35. doi: 10.1016/bs.mie.2021.03.013. Epub 2021 Apr 23. PMID: 34183125.
> Hashimshony, T., Senderovich, N., Avital, G. et al. CEL-Seq2: sensitive highly-multiplexed single-cell RNA-Seq. Genome Biol 17, 77 (2016). https://doi.org/10.1186/s13059-016-0938-8

The library prep protocol can be found at **LW-100 test new single cell PASseq protocol** in eLabFTW journal, Mulder group.

The fastq data were mapped by kallistobus (see _mapping-data-kallistobus.sh_, plate barcodes can be found in _barcodes384.txt_ file). 
The kallistobus output, cell_x_genes.mtx matrix, was used for further analysis in R (see _scPASseq.Rmd_). Two Rebecca's scripts for ERCC and UMI layout in plate were used in the R code (_qc_ercc_384plot.R_ and _qc_umis_384plot.R_).
