#!/bin/bash

docker pull ubuntu:trusty-20170119

docker build . -t brainlife/hcppipeline && \
    docker tag brainlife/hcppipeline brainlife/hcppipeline:0.1 && \
    docker push brainlife/hcppipeline

#singularity exec -e docker://soichih/hcppipeline bash
