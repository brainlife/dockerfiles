FROM neurodebian:nd20.04-non-free

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install -y wget gzip tar

#install nodejs & brainlife cli
RUN apt install -y build-essential apt-transport-https lsb-release ca-certificates
RUN wget -q -O - https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs 
RUN npm install brainlife -g

#install datald
RUN apt-get install -y datalad=0.15.0-2~nd20.04+1
RUN datalad --version

RUN apt install python3

#install dcm2niix
RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y build-essential pkg-config cmake git pigz && \
	apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y
RUN cd /tmp && \
	git clone https://github.com/rordenlab/dcm2niix.git -b v1.0.20211006 && \
	cd dcm2niix && mkdir build && cd build && \
	cmake -DBATCH_VERSION=ON -DUSE_OPENJPEG=ON .. && \
	make && make install

RUN apt-get -y install zip

