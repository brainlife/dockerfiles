#FROM neurodebian:xenial
FROM centos:7
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

#download freesurfer
RUN curl ftp://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/7.3.2/freesurfer-linux-centos7_x86_64-7.3.2.tar.gz | tar xvz -C /usr/local

#install MCR
RUN cd /usr/local/freesurfer && \
      curl "https://surfer.nmr.mgh.harvard.edu/fswiki/MatlabRuntime?action=AttachFile&do=get&target=runtime2014bLinux.tar.gz" -o "runtime2014b.tar.gz" && \
      tar xvf runtime2014b.tar.gz && \
      rm runtime2014b.tar.gz
RUN chmod -R +rx /usr/local/freesurfer/MCRv84

ENV FREESURFER_HOME /usr/local/freesurfer
ENV FMRI_ANALYSIS_DIR /usr/local/freesurfer/fsfast
ENV FSFAST_HOME /usr/local/freesurfer/fsfast
ENV FUNCTIONALS_DIR /usr/local/freesurfer/sessions
ENV LOCAL_DIR /usr/local/freesurfer/local
ENV MINC_BIN_DIR /usr/local/freesurfer/mni/bin
ENV MINC_LIB_DIR /usr/local/freesurfer/mni/lib
ENV MNI_DATAPATH /usr/local/freesurfer/mni/data
ENV MNI_DIR /usr/local/freesurfer/mni
ENV MNI_PERL5LIB /usr/local/freesurfer/mni/share/perl5
ENV PERL5LIB /usr/local/freesurfer/mni/share/perl5
ENV PATH /usr/local/freesurfer/bin:/usr/local/freesurfer/fsfast/bin:/usr/local/freesurfer/tktools:/usr/local/freesurfer/mni/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:\$PATH

RUN yum install -y epel-release && yum install -y tcsh jq libXext libXt bc libgomp perl bc

RUN yum install -y ImageMagick #for qatools.sh

#make it work under singularity
#TODO - mkdir shouldn't be necessary as we can use export SINGULARITY_BINDPATH=/N/project
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft /scratch /mnt/share1 /share1
