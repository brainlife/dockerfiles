#!/bin/bash

set -ex

#tag=3.0.3-1~nd100+1
tag=3.0.3

#docker buildx --platform linux/ppc64le -t brainlife/mrtrix3 .
docker build --build-arg tag=$tag -t brainlife/mrtrix3 .
docker tag brainlife/mrtrix3 brainlife/mrtrix3:$tag
docker tag brainlife/mrtrix3 brainlife/mrtrix3:latest
docker push brainlife/mrtrix3
docker push brainlife/mrtrix3:$tag

