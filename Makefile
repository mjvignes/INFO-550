# rule for making report 
 report.html: hg18genes.txt myPlot.png R/report.Rmd
 Rscript -e "rmarkdown::render('report.Rmd', output_file = 'report.html')"


# rule for installing packages
## install: install the necessary packages for R
install: R/installpackages.R
	chmod +x $< && \
	Rscript R/installpackages.R
  

# makes the help code
# help: provides helpful documentation for make file
help: 
	@echo "report.html: generates final report"
	@echo "install: Installing R packages needed for analysis."
  @echo "help: provides helpful documentation for make file"
