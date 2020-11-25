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

# histogram of gene length
png("figs/Fig1.png")
hist(geneLen,50, main="Gene lengths", xlab="base pairs")
dev.off()
