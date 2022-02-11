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

RUN fsleyes --version

#trying to get fsleyes render to work.. but I get
#yum -y install mesa-libOSMesa
#ENV PYOPENGL_PLATFORM=osmesa

# WARNING          __init__.py  344: bootstrap       - One of these OpenGL extensions is not available: [GL_EXT_framebuffer_object, GL_ARB_instanced_arrays, GL_ARB_draw_instanced]. Falling back to an older OpenGL implementation.
#freeglut (foo): failed to open display ''

#I will stick with singularity exec -e docker://brainlife/fsleyes:0.32.3 xvfb-run -s "-screen 0 640x480x24" fsleyes render --scene ortho -of outfile.png tmp/bold.mean.nii.gz
