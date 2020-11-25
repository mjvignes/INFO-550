#rule for creating final report
report.html: R/report.Rmd figs/Fig1.png figs/Fig2.png 
	cd R; Rscript -e "rmarkdown::render('report.Rmd', output_file = '../report.html')"
	
	
# rule for installing packages
## install: install the necessary packages for R
install: R/installpackages.R
	chmod +x $< && \
	Rscript R/installpackages.R

#rule for making Figure 1
figs/Fig1.png: R/Fig1.R
	Rscript R/Fig1.R

#rule for making Figure 2
figs/Fig2.png: R/Fig2.R
	Rscript R/Fig2.R

## build: Build the docker image.
# rule for building docker image
.PHONY:	build
build:	Makefile
	docker build -t final-project .
  

# makes the help code
# help: provides helpful documentation for make file
help: 
	@echo "report.html: generates final report"
	@echo "install: Installing R packages needed for analysis."
	@echo "help: provides helpful documentation for make file"
