setwd("/project")

#installs necessary packages

if (!requireNamespace("BiocManager"))
      install.packages("BiocManager")
   BiocManager::install()


#loading the data 
genes=read.table("hg18genes.txt", comment="", header=TRUE)

# basic data cleaning 
genes1 <- na.omit(genes)
#creating a new gene length variable
geneLen=genes1$txEnd-genes1$txStart

# histogram of log gene length - a clear bimodal distribution.
png("figs/Fig2.png")
hist(log(geneLen),50, main="log(Gene lengths)", xlab="base pairs")
dev.off()
