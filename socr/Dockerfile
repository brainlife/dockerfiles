FROM ubuntu:16.04
MAINTAINER Soichi Hayashis <hayashis@iu.edu>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y vim jq curl unzip openjdk-8-jre

#Install SOCR binary
RUN curl http://www.socr.ucla.edu/jars/SOCR/SOCR_1.2_bin.zip > /tmp/socr.zip && unzip /tmp/socr.zip -d /socr && rm /tmp/socr.zip

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

