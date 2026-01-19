FROM ubuntu:jammy-20260109
MAINTAINER Brad Caron <brad.a.caron@gmail.com>

RUN apt update && apt upgrade -y && apt install -y curl tar git build-essential pkg-config libssl-dev libbz2-dev libffi-dev tcsh jq bc imagemagick python3-pip build-essential libssl-dev libffi-dev python3-dev libgl1 mesa-utils libgl1-mesa-glx xvfb

RUN curl https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/7.4.1/freesurfer-linux-ubuntu22_amd64-7.4.1.tar.gz | tar xvz -C /usr/local

#install MCR
RUN cd /usr/local/freesurfer && \
      curl "https://surfer.nmr.mgh.harvard.edu/fswiki/MatlabRuntime?action=AttachFile&do=get&target=runtime2014bLinux.tar.gz" -o "runtime2014b.tar.gz" && \
      tar xvf runtime2014b.tar.gz && \
      rm runtime2014b.tar.gz
RUN chmod -R +rx /usr/local/freesurfer/MCRv84

ENV FREESURFER_HOME=/usr/local/freesurfer
ENV FMRI_ANALYSIS_DIR=/usr/local/freesurfer/fsfast
ENV FSFAST_HOME=/usr/local/freesurfer/fsfast
ENV FUNCTIONALS_DIR=/usr/local/freesurfer/sessions
ENV LOCAL_DIR=/usr/local/freesurfer/local
ENV MINC_BIN_DIR=/usr/local/freesurfer/mni/bin
ENV MINC_LIB_DIR=/usr/local/freesurfer/mni/lib
ENV MNI_DATAPATH=/usr/local/freesurfer/mni/data
ENV MNI_DIR=/usr/local/freesurfer/mni
ENV MNI_PERL5LIB=/usr/local/freesurfer/mni/share/perl5
ENV PERL5LIB=/usr/local/freesurfer/mni/share/perl5
ENV PATH=/usr/local/freesurfer/bin:/usr/local/freesurfer/fsfast/bin:/usr/local/freesurfer/tktools:/usr/local/freesurfer/mni/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:\$PATH


RUN pip3 install mne==1.11.0 pyvista nibabel

RUN pip install matplotlib scikit-learn pandas seaborn jupyter pyvista ipyvtklink 

#requested by guio
RUN pip install https://api.github.com/repos/autoreject/autoreject/zipball/master

#install mne-bids-pipeline somewhere
RUN pip install mne-bids coloredlogs tqdm pandas json_tricks fire nibabel IPython ipywidgets
RUN git clone https://github.com/mne-tools/mne-bids-pipeline.git /mne-bids-pipeline


ENV PYVISTA_OFF_SCREEN=true
ENV PYVISTA_USE_IPYVTK=true


#make it work under singularity
#TODO - mkdir shouldn't be necessary as we can use export SINGULARITY_BINDPATH=/N/project
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft /scratch /mnt/share1 /share1