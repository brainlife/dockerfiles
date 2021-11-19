FROM neurodebian:stretch-non-free
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git g++ python python-numpy libeigen3-dev zlib1g-dev libqt4-opengl-dev libgl1-mesa-dev libfftw3-dev libtiff5-dev python-pip jq strace curl vim wget unzip bc

COPY bin /freesurfer-bin
ENV PATH /freesurfer-bin:$PATH

#this is where we put the license.txt in
ENV FREESURFER_HOME /usr/local/freesurfer
#some command line that doesn't need SUBJECTS_DIR asks for this
ENV SUBJECTS_DIR=$PWD

# Install FSL 5.0.9
RUN apt-get update && apt-get install -y fsl

# Configure environment
ENV FSLDIR=/usr/share/fsl/5.0
ENV FSL_DIR="${FSLDIR}"
ENV FSLOUTPUTTYPE=NIFTI_GZ
ENV PATH=/usr/lib/fsl/5.0:$PATH
ENV FSLMULTIFILEQUIT=TRUE
ENV POSSUMDIR=/usr/share/fsl/5.0
ENV LD_LIBRARY_PATH=/usr/lib/fsl/5.0:$LD_LIBRARY_PATH
ENV FSLTCLSH=/usr/bin/tclsh
ENV FSLWISH=/usr/bin/wish
ENV FSLOUTPUTTYPE=NIFTI_GZ

ARG version

# install connectome workbench
RUN wget https://www.humanconnectome.org/storage/app/media/workbench/workbench-linux64-v$version.zip -O workbench.zip && unzip workbench.zip -d /usr/local/ && rm workbench.zip 

ENV PATH=$PATH:/usr/local/workbench/bin_linux64

#make it work under singularity 
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get install -y bc
