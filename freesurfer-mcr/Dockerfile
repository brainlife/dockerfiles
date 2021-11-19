#FROM neurodebian:xenial
#FROM brainlife/mcr:neurodebian1604-r2012b
FROM brainlife/freesurfer:6.0.0

MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y libatlas-base-dev libxt6 libxmu6

#install mcr r2012b on /usr/local/freesurfer/MCRv80
ADD MCRv80.tar.gz /usr/local/freesurfer

RUN ldconfig 

