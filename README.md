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
or you can use 
```make install```

This package includes a number of core features that can be used to analyze and visualize genomic data.

# Execution and Analysis in Your Local Environment 
To execute the analysis, from the project R folder you can run
```{r, execution, echo = FALSE}
Rscript -e "rmarkdown::render('report.Rmd')"
```
or you can use 
```make report```
This will create a file called report.html output in your directory that contains the results.

To see more helpful information about the Makefile, from the project folder you can run
```make help```


***** please note that the report.Rmd file is located in the R folder along with the installpackages.R file. I am attempting to keep all relevant code included in this folder *****

# Execution and Analysis using Docker
Downloading the final_project.zip file in this repository and decompress it. Downloading the built Docker image from my DockerHub(mvignes/info-550) by using the command

```docker pull mvignes/info-550:firsttry```

Also, you can build the docker image locally, from the project folder running

```make build```

Then run the built container:
If you download a built Docker image from DockerHub, run the built container with /final_project/ folder mounted to a local directory by using the command

```docker run -it -v ~/Desktop/final_project:/project final-proj mvignes/info550:firsttry```

If you build the docker image locally, from the project folder you can run

```docker run -it -v ~/Desktop/final_project:/project```

Replace the path in the code above with the path that you want to save the report on your own computer. You will then find a folder named report with the report.html in it.


# Make File
The make file contains all three rules for make help, make install, make build, and make report. To make the report, simply type in "make report" after navigating to the proper folder. "Make install" will install the necessary libraries. Make build will build the project image. Lastly, there is a rule "make help". Type this in to get some helpful documentation regarding the make file
