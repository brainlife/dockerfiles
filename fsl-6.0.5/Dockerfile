FROM neurodebian:nd18.04-non-free
#FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

#https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation/Linux
RUN apt update && apt install -y wget python libgl-dev jq python-numpy

#install fsl, but get rid of src 
#RUN wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fslinstaller.py && \
#      python fslinstaller.py -d /usr/local/fsl -V 6.0.5 && rm -rf /usr/local/fsl/src

RUN wget https://git.fmrib.ox.ac.uk/fsl/installer/-/raw/3.3.0/fslinstaller.py && \
      python fslinstaller.py -d /usr/local/fsl -V 6.0.5 && rm -rf /usr/local/fsl/src

ENV FSLDIR=/usr/local/fsl
ENV PATH=$PATH:$FSLDIR/bin
ENV LD_LIBRARY_PATH=$FSLDIR/lib

RUN . $FSLDIR/etc/fslconf/fsl.sh

ENV FSLOUTPUTTYPE=NIFTI_GZ

#RUN ls /usr/local/fsl/lib
#RUN ldd /usr/local/fsl/bin/eddy_cuda9.1
#RUN du -sh /usr/local/fsl/fslpython

#RUN rm -rf $FSLDIR/fslpython
#RUN $FSLDIR/etc/fslconf/fslpython_install.sh -f $FSLDIR || cat /tmp/*/fslpython_miniconda_installer.log

#make sure fslpython is properly installed
RUN which imcp

#install fslv5 binaries (topup - v6 version runs really slow for unknown reason)
#ADD fsl5 /usr/local/fsl5
#ENV PATH=/usr/local/fsl5:$PATH

RUN apt install bc
#used by fslorient2std

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt install -y libgomp1

