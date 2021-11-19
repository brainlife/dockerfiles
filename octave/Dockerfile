FROM ubuntu:xenial-20201014
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

#install deps
#RUN apt-get update && apt-get install -y wget jq vim

#install neurodebian
#RUN wget -O- http://neuro.debian.net/lists/xenial.us-tn.full | tee /etc/apt/sources.list.d/neurodebian.sources.list
#RUN apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9

#install fsl
RUN apt-get update && apt search octave
RUN apt-get install -y octave=4.0.0-3ubuntu9.2
