FROM neurodebian:nd16.04
MAINTAINER Soichi Hayashi

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install sudo python jq time ants git curl unzip

#install hcp pipeline so that we can have the MNI templates (to root)
RUN git clone https://github.com/Washington-University/HCPpipelines.git

#http://www.bic.mni.mcgill.ca/ServicesAtlases/ICBM152NLin2009
RUN curl http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09a_nifti.zip -o tmp.zip && unzip -o tmp.zip -d /atlas && rm tmp.zip
RUN curl http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_asym_09a_nifti.zip -o tmp.zip && unzip -o tmp.zip -d /atlas && rm tmp.zip
RUN curl http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09c_nifti.zip -o tmp.zip && unzip -o tmp.zip -d /atlas && rm tmp.zip
RUN curl http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_asym_09c_nifti.zip -o tmp.zip && unzip -o tmp.zip -d /atlas && rm tmp.zip

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft /mnt/scratch /share1

ENV PATH=$PATH:/usr/lib/ants
ENV ANTSPATH=/usr/lib/ants

RUN apt-get -y install bc



