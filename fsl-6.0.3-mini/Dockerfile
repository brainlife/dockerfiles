FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install -y libopenblas-dev

COPY bin/flirt /usr/bin/flirt

#RUN flirt -v
