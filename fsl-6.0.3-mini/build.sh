#!/bin/bash

set -e
set -x

tag=6.0.3

docker build -t brainlife/fsl-mini . 
docker tag brainlife/fsl-mini brainlife/fsl-mini:$tag 
docker push brainlife/fsl-mini:$tag
