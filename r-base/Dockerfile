FROM r-base

RUN apt-get update && \
	apt-get install -y \
	build-essential libssl-dev libpq-dev xml2 openssl libxml2-dev libcurl4-openssl-dev unixodbc-dev

RUN Rscript -e "install.packages('RPostgres', repos = 'http://cran.us.r-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('aws.s3', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('tidyverse', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('dbplyr', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('data.table', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('tidytable', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('janitor', repos = 'https://cloud.R-project.org', dependencies=TRUE)" && \
	Rscript -e "install.packages('odbc', repos = 'https://cloud.R-project.org', dependencies=TRUE)"