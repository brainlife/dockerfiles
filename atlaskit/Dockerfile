FROM neurodebian:nd18.04-non-free

ENV DEBIAN_FRONTEND noninteractive

#install dependencies
RUN apt update && apt-get install -y ants fsl python3 git jq python-numpy

ENV FSLDIR=/usr/share/fsl/5.0
ENV PATH=$PATH:$FSLDIR/bin
ENV LD_LIBRARY_PATH=/usr/lib/fsl/5.0:/usr/share/fsl/5.0/bin

#simulate . ${FSLDIR}/etc/fslconf/fsl.sh
ENV FSLBROWSER=/etc/alternatives/x-www-browser
ENV FSLCLUSTER_MAILOPTS=n
ENV FSLLOCKDIR=
ENV FSLMACHINELIST=
ENV FSLMULTIFILEQUIT=TRUE
ENV FSLOUTPUTTYPE=NIFTI_GZ
ENV FSLREMOTECALL=
ENV FSLTCLSH=/usr/bin/tclsh
ENV FSLWISH=/usr/bin/wish
ENV POSSUMDIR=/usr/share/fsl/5.0

#install atlaskit
RUN git clone https://github.com/jmtyszka/atlaskit.git -b v1.0.0 /atlaskit
ENV PYTHONPATH=/atlaskit

ENV PATH=$PATH:/usr/lib/ants
ENV ANTSPATH=/usr/lib/ants

#install template
ADD CIT168Atlases /template

RUN ldconfig
