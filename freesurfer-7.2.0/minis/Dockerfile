FROM centos:7


RUN yum install -y epel-release && yum install -y libgomp jq 
#tcsh jq libXext libXt bc libgomp perl bc

COPY bin /usr/local/freesurfer/bin
COPY average /usr/local/freesurfer/average
COPY lib /usr/local/freesurfer/lib
COPY FreeSurferColorLUT.txt /usr/local/freesurfer/FreeSurferColorLUT.txt

RUN ls /usr/local/freesurfer/average/talairach_mixed_with_skull.gca

#where we put the license.txt in
ENV FREESURFER_HOME /usr/local/freesurfer
ENV PATH /usr/local/freesurfer/bin:$PATH

#some command line that doesn't need SUBJECTS_DIR asks for this
ENV SUBJECTS_DIR=$PWD

RUN yum install -y ImageMagick #for qatools.sh
