FROM ubuntu:18.04

MAINTAINER Brad Caron <bacaron@utexas.edu>

RUN apt-get update && apt-get install -y python3-dev python3-numpy python3-pip jq git

## install pandas and freesurfer-stats
RUN pip3 install pandas

RUN git clone https://github.com/fphammerle/freesurfer-stats.git /freesurfer-stats
RUN cd /freesurfer-stats && python3 setup.py build_ext --inplace

ENV PYTHONPATH /freesurfer-stats:$PYTHONPATH

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
