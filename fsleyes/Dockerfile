FROM centos:7

#https://users.fmrib.ox.ac.uk/~paulmc/fsleyes/userdoc/latest/install.html

RUN yum -y update && yum -y install epel-release && yum -y install wget \
    gtk3 \
    SDL \
    libSM \
    mesa-dri-drivers \
    gstreamer-plugins-base \
    xorg-x11-server-Xvfb \
    libnotify \
    freeglut \
        && yum clean all &&  rm -rf /var/cache/yum
#Xvfb \

RUN wget -O /tmp/fsleyes.tar.gz https://fsl.fmrib.ox.ac.uk/fsldownloads/fsleyes/FSLeyes-latest-centos7.tar.gz && cd /usr/local && tar xf /tmp/fsleyes.tar.gz && rm /tmp/fsleyes.tar.gz
RUN echo -e '#!/usr/bin/env bash\n/usr/local/FSLeyes/fsleyes "$@"' > /usr/local/bin/fsleyes && chmod a+x /usr/local/bin/fsleyes
