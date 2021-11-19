FROM ubuntu:18.04
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3-pip git python3-tk jq python3-pil cmake

RUN pip3 install numpy cython scipy matplotlib==2.2.3 h5py hdf5storage nibabel nipype
RUN pip3 install cvxpy scikit-learn imageio pandas seaborn joblib

#RUN git clone https://github.com/nipy/dipy.git && cd dipy && pip install .
RUN pip3 install dipy==1.4.0

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV PYTHONNOUSERSITE=true

#this prevent json.load(config_json) to blow up if it's not ascii
ENV LC_CTYPE=C.UTF-8
