## INFO-550

Final Project for INFO 550

For this project I will be looking at human genome data.

In order to start your analysis you will need to download the dataset "hg18genes.txt"
make sure this file is in the working directory you set in the command line.

Then to run R code through the command line use:
```#! /usr/local/bin/r ```

To analyze the data you will need to install some R packages. The required packages can be installed using R commands.
```{r, Package Installation, echo = FALSE}
if (!requireNamespace("BiocManager"))
      install.packages("BiocManager")
   BiocManager::install()
```
This package includes a number of core features that can be used to analyze and visualize genomic data.

# Execution and Analysis
To execute the analysis, from the project R folder you can run
```{r, execution, echo = FALSE}
Rscript -e "rmarkdown::render('report.Rmd')"
```
This will create a file called report.html output in your directory that contains the results.

***** please note that the report.Rmd file is located in the R folder along with the installpackages.R file. I am attempting to keep all relevant code included in this folder *****

# Make File
The make file contains all three rules for make help, make install, and make report. To make the report, simply type in "make report" after navigating to the proper folder. "Make install" will install the necessary libraries. Lastly, there is a rule "make help". Type this in to get some helpful documentation regarding the make file
