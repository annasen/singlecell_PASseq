# download a genome of interest in .fa and .gtf format and merge it with ERCC.fa and ERCC.gtf 
# or find them in my folder /vol/moldevbio/veenstra/asenovska/genomes/GRCh38.p13+ERCC/

# run kallistobus reference to get the .idx file, GRCh38.p13+ERCC.idx can be found in my folder
kb ref -i GRCh38.p13+ERCC.idx -g GRCh38.p13+ERCC.t2g.txt -f1 GRCh38+ERCC.p13.cdna.fa GRCh38.p13+ERCC.fa GRCh38.p13+ERCC.annotation.gtf

# map the data with kallistobus count
nice -n 10 kb count -i ../genomes/GRCh38.p13+ERCC/GRCh38.p13+ERCC.idx \
           -g ../genomes/GRCh38.p13+ERCC/GRCh38.p13+ERCC_t2g.txt \
           -x 1,8,16:1,0,8:0,0,0 -w barcodes384.txt \ 
           --overwrite --verbose -t 40 \
           -o "results_kb_ERCC_manual" \
           /path/to/fastq/plate29_R1.fastq.gz \ # R2 are only UMI, barcodes, and poly(T)

# explanation on the -x flag in the code above: 0 is R1, 1 is R2. The order is: barcode file, start bp, end bp : UMI file, start bp, end bp : coding file, start bp, end bp. 
# This is specified in Rebecca's paper (https://www.biorxiv.org/content/10.1101/2024.04.09.588683v2) in section COMPUTATIONAL METHODS, Processing and integration of CEL-Seq2 scRNA-sequencing data 

# After creating the reference and running the kb count, load cell_x_genes.mtx into R.
