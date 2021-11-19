#FROM ubuntu:20.04
FROM neurodebian:stretch

ARG tag

ENV DEBIAN_FRONTEND noninteractive 
RUN apt update && apt-get install -y ants

## install mrtrix3 requirements
#$RUN apt update && apt-get install -y git g++ python python-numpy libeigen3-dev zlib1g-dev libqt4-opengl-dev libgl1-mesa-dev libfftw3-dev libtiff5-dev

RUN apt-get install -y git g++ python python-numpy libeigen3-dev zlib1g-dev qt5-default

## install and compile mrtrix3
RUN git clone https://github.com/MRtrix3/mrtrix3.git -b $tag
RUN cd mrtrix3 && \
    ./configure -nogui \
    && ./build

## manually add to path
ENV PATH=$PATH:/mrtrix3/bin

## install fsl binaries needed by dwifslpreproc
ADD fsl-6.0.3 /usr/bin/fsl-6.0.3
ENV FSLDIR=/usr/bin/fsl-6.0.3
ENV FSLOUTPUTTYPE=NIFTI_GZ
ENV PATH=$PATH:$FSLDIR/bin
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FSLDIR/lib

## install topup from fsl5 (fsl6 version is super slow)
ADD fsl-5.0.8 /usr/bin/fsl-5.0.8
ENV PATH=$PATH:/usr/bin/fsl-5.0.8/bin
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/bin/fsl-5.0.8/lib

RUN dwifslpreproc -help

#missing things
RUN apt-get -y install jq

#install the latest cmake for ants
RUN apt-get -y install libssl-dev
ADD cmake-3.21.3.tar.gz /tmp 
RUN cd /tmp/cmake-3.21.3 && ./configure && make install

#reinstall ants.. apt-get install ants installs ants without a lot of stuff?
#RUN apt-get -y install cmake
#RUN git clone https://github.com/ANTsX/ANTs.git -b v2.3.5 /ants 
#RUN mkdir /ants/build && cd /ants/build && cmake .. && make
#RUN cd /ants && make install

