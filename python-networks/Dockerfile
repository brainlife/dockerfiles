FROM filsilva/cxnetwork

MAINTAINER Brad Caron <bacaron@utexas.edu>

#RUN apt-get update && apt-get install -y python3-dev python3-numpy python3-pip jq git build-essential libxml2-dev zlib1g-dev

# install numpy, networkx, scipy, json, re, tqdm, igraph, jgf
#RUN pip3 install --user igraph
#RUN pip3 install numpy scipy networkx tqdm jgf
RUN pip install networkx

#make it work under singularity
#RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
