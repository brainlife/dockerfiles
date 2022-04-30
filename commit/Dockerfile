FROM python:3.8

MAINTAINER Brad Caron <bacaron@utexas.edu>

#extra things we need
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3-pip git python3-tk jq python3-pil cmake wget bzip2 vim

RUN apt-get update && apt-get install -y build-essential libblas-dev liblapack-dev

#install python packages
RUN pip3 install numpy nibabel cython scipy matplotlib h5py nipype cvxpy scikit-learn imageio pandas seaborn joblib nilearn dipy spams dmri-amico dmri-commit

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV PYTHONNOUSERSITE=True

#this prevents json.load(config_json) to blow up if it
ENV LC_CTYPE=C.UTF-8
