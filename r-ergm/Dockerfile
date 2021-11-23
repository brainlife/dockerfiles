
FROM rocker/r-base:4.1.2

RUN R -e "install.packages('rjson')"
RUN R -e "install.packages('network')"
RUN R -e "install.packages('ergm', version='$VERSION')"

#CMD Rscript
