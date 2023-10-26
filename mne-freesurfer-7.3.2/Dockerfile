FROM brainlife/freesurfer:7.3.2
#FROM neurodebian:xenial
# FROM centos:7
# MAINTAINER Soichi Hayashi <hayashis@iu.edu>

# #download freesurfer
# RUN curl ftp://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/7.3.2/freesurfer-linux-centos7_x86_64-7.3.2.tar.gz | tar xvz -C /usr/local

# #install MCR
# RUN cd /usr/local/freesurfer && \
#       curl "https://surfer.nmr.mgh.harvard.edu/fswiki/MatlabRuntime?action=AttachFile&do=get&target=runtime2014bLinux.tar.gz" -o "runtime2014b.tar.gz" && \
#       tar xvf runtime2014b.tar.gz && \
#       rm runtime2014b.tar.gz
# RUN chmod -R +rx /usr/local/freesurfer/MCRv84

# ENV FREESURFER_HOME /usr/local/freesurfer
# ENV FMRI_ANALYSIS_DIR /usr/local/freesurfer/fsfast
# ENV FSFAST_HOME /usr/local/freesurfer/fsfast
# ENV FUNCTIONALS_DIR /usr/local/freesurfer/sessions
# ENV LOCAL_DIR /usr/local/freesurfer/local
# ENV MINC_BIN_DIR /usr/local/freesurfer/mni/bin
# ENV MINC_LIB_DIR /usr/local/freesurfer/mni/lib
# ENV MNI_DATAPATH /usr/local/freesurfer/mni/data
# ENV MNI_DIR /usr/local/freesurfer/mni
# ENV MNI_PERL5LIB /usr/local/freesurfer/mni/share/perl5
# ENV PERL5LIB /usr/local/freesurfer/mni/share/perl5
# ENV PATH /usr/local/freesurfer/bin:/usr/local/freesurfer/fsfast/bin:/usr/local/freesurfer/tktools:/usr/local/freesurfer/mni/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:\$PATH

# RUN yum install -y epel-release && yum install -y tcsh jq libXext libXt bc libgomp perl bc

# RUN yum install -y ImageMagick #for qatools.sh

# install mne python
# RUN echo ''
RUN yum install -y openssl11-devel bzip2-devel libffi-devel
RUN yum groupinstall -y "Development Tools"
RUN curl https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz -o Python-3.10.2.tgz && tar -xzf Python-3.10.2.tgz && rm Python-3.10.2.tgz 
RUN cd Python-3.10.2 && sed -i 's/PKG_CONFIG openssl /PKG_CONFIG openssl11 /g' ./configure && ./configure --enable-optimizations && make install && cd ../
RUN python3 -m pip install --upgrade pip

# RUN yum install -y python3-pip
# # RUN python3.10 -m pip install --upgrade pip
# # # RUN python3 --version
# # # RUN python3 -m pip3 install --upgrade pip
# # # RUN easy_install pip
# # # RUN python3 -m pip3 install install pip3
# RUN python3.10 -m pip install setuptools
# RUN python3 -m pip install --upgrade pip setuptools wheel
# RUN python3.10 -m pip install setuptools
RUN python3 -m pip install mne==1.2.1 pyvista nibabel

RUN python3 -m pip install matplotlib scikit-learn pandas seaborn jupyter pyvista ipyvtklink 

# # #requested by guio
RUN python3 -m pip install https://api.github.com/repos/autoreject/autoreject/zipball/master

# # #install mne-bids-pipeline somewhere
RUN python3 -m pip install mne-bids coloredlogs tqdm pandas json_tricks fire nibabel IPython ipywidgets
RUN git clone https://github.com/mne-tools/mne-bids-pipeline.git /mne-bids-pipeline

RUN yum install -y mesa-libGL mesa-utils libgl1-mesa-glx xvfb

ENV PYVISTA_OFF_SCREEN=true
ENV PYVISTA_USE_IPYVTK=true


# # #make it work under singularity
# # #TODO - mkdir shouldn't be necessary as we can use export SINGULARITY_BINDPATH=/N/project
# # # RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft /scratch /mnt/share1 /share1
