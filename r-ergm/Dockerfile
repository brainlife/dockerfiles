
FROM rocker/r-base:4.1.2

ARG VERSION

RUN R -e 'install.packages(c("rjson", "network"))'
RUN R -e "install.packages(\"ergm\", version=\"$VERSION\")"

CMD Rscript
