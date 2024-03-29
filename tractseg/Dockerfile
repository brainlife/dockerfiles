FROM neurodebian:stretch-non-free

MAINTAINER Giulia Berto <giulia.berto@utexas.edu>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y g++ libeigen3-dev zlib1g-dev libqt4-opengl-dev libgl1-mesa-dev libfftw3-dev libtiff5-dev jq strace vim python3-tk

#libgomp1 seems to comes with pytorch so I don't need it

#RUN pip3 install --upgrade pip

# Libraries needed to compile python
RUN apt-get update -qq \
    && apt-get install -qq build-essential libbz2-dev zlib1g-dev libncurses5-dev libgdbm-dev \
    && apt-get install -qq libnss3-dev libssl-dev libreadline-dev libffi-dev wget \
    && apt-get install -qq software-properties-common git curl

# Compiling python 3.7
RUN cd /usr/src \
    && wget -q https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz \
    && tar xzf Python-3.7.9.tgz \
    && cd Python-3.7.9 \
    && ./configure --enable-optimizations >/dev/null \
    && make install > /dev/null

# Install fsl (needed for bet and flirt)
#RUN apt-get update -qq \
#    && apt-get install -qq --no-install-recommends fsl-core fsl-first-data \
#    && apt-get clean -qq \
#    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#install entire fsl package since apparently it's needed 
#for csd_msmt_5tt and preprocessing options
RUN apt-get update -qq \
    && apt-get install -y -q --no-install-recommends \
           fsl-complete \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

ENV FSLDIR=/usr/share/fsl/5.0
ENV PATH=$PATH:$FSLDIR/bin
ENV LD_LIBRARY_PATH=/usr/lib/fsl/5.0:/usr/share/fsl/5.0/bin

#simulate . ${FSLDIR}/etc/fslconf/fsl.sh
ENV FSLBROWSER=/etc/alternatives/x-www-browser
ENV FSLCLUSTER_MAILOPTS=n
ENV FSLLOCKDIR=
ENV FSLMACHINELIST=
ENV FSLMULTIFILEQUIT=TRUE
ENV FSLOUTPUTTYPE=NIFTI_GZ
ENV FSLREMOTECALL=
ENV FSLTCLSH=/usr/bin/tclsh
ENV FSLWISH=/usr/bin/wish
ENV POSSUMDIR=/usr/share/fsl/5.0

## install and compile mrtrix3
RUN git clone https://github.com/MRtrix3/mrtrix3.git
RUN cd mrtrix3 && git fetch --tags && git checkout tags/3.0.0 && ./configure && ./build
ENV PATH=$PATH:/mrtrix3/bin

#RUN pip3 install seaborn numpy
#RUN pip3 install torch torchvision

RUN pip3.7 install -q --upgrade pip \
    && pip3.7 install -q wheel numpy scipy nilearn matplotlib scikit-image nibabel==3.2.2 dipy==1.4.1 \
    && pip3.7 install -q torch==1.6.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

#install batchgenerator/tractseg
#RUN pip install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip install https://github.com/MIC-DKFZ/TractSeg/archive/v1.7.1.zip
#RUN pip3 install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip3 install https://github.com/MIC-DKFZ/TractSeg/archive/v2.1.1.zip
#RUN pip3.7 install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip3 install https://github.com/MIC-DKFZ/TractSeg/archive/v2.2.zip
#RUN pip3.7 install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip3 install https://github.com/MIC-DKFZ/TractSeg/archive/master.zip
#RUN pip3.7 install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip3 install https://github.com/MIC-DKFZ/TractSeg/archive/v2.5.zip
RUN pip3.7 install https://github.com/MIC-DKFZ/batchgenerators/archive/master.zip && pip3 install https://github.com/MIC-DKFZ/TractSeg/archive/v2.7.zip

RUN HOME=/ download_all_pretrained_weights

#make it work under singularity 
#RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft
RUN ldconfig && mkdir -p /N/u /N/home /N/soft

#https://wiki.ubuntu.com/DashAsBinSh 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
