ARG version

FROM rocker/r-base:$version

COPY install.R /
RUN Rscript /install.R

CMD Rscript
