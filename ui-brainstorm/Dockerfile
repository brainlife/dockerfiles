FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04
ENV DEBIAN_FRONTEND=noninteractive

#install MCR v98
RUN apt-get -qq update && apt-get -qq install -y unzip xorg wget curl libstdc++6 libgomp1 libatlas-base-dev && apt-get clean
RUN mkdir /install && \
    cd /install && \
    wget https://ssd.mathworks.com/supportfiles/downloads/R2020a/Release/6/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2020a_Update_6_glnxa64.zip && \
    unzip MATLAB_Runtime_R2020a_Update_6_glnxa64.zip && \
    ./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    rm -rf /install
# Configure environment variables for MCR
ENV LD_LIBRARY_PATH /opt/mcr/v98/runtime/glnxa64:/opt/mcr/v98/bin/glnxa64:/opt/mcr/v98/sys/os/glnxa64:/opt/mcr/v98/extern/bin/glnxa64

#install novnc deps
RUN apt-get update && apt-get install -y \
    vim \
    wget \
    tightvncserver \
    libxcb-keysyms1 \
    python3 \
    python3-pip \
    wmctrl \
    libjpeg62 \
    libglu1-mesa \
    mesa-utils \
    libfftw3-dev \
    libtiff5-dev \
    xfce4 \
    freeglut3 \
    libsdl1.2debian \
    libjs-jquery-ui

#install brainstorm
ADD brainstorm3 /brainstorm3
ENV PATH=$PATH:/brainstorm3/bin/R2020a

ADD virtualgl_2.6_amd64.deb /
RUN dpkg -i /virtualgl_2.6_amd64.deb
ADD .brainstorm /root/
RUN ls /root/.brainstorm/brainstorm.mat

ADD startvnc.sh /
ADD xstartup /root/.vnc/xstartup
ENV USER=root X11VNC_PASSWORD=override

#remove bottom panel, and fix tab key
ADD xfce4 /root/.config/xfce4

EXPOSE 5900

ENV MATLABROOT=/opt/mcr/v98

#initialize database TODO
#RUN brainstorm3.command --init

CMD ["/startvnc.sh"]

