FROM brainlife/fsl:5.0.9
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y libcudart7.5 libgomp1

RUN cd /usr/share/fsl/5.0/bin && wget https://fsl.fmrib.ox.ac.uk/fsldownloads/patches/eddy-patch-fsl-5.0.11/centos6/eddy_cuda7.5 && chmod +x eddy_cuda7.5 && ln -s eddy_cuda7.5 eddy_cuda
RUN cd /usr/share/fsl/5.0/bin && wget https://fsl.fmrib.ox.ac.uk/fsldownloads/patches/eddy-patch-fsl-5.0.11/centos6/eddy_openmp && chmod +x eddy_openmp

RUN ldconfig && mkdir -p /opt/cray /opt/nvidia

