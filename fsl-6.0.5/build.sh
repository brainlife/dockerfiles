#!/bin/bash

#set -e
#set -x

tag=6.0.5

docker build -t brainlife/fsl . 
#docker tag brainlife/fsl brainlife/fsl:$tag 
#docker push brainlife/fsl:$tag
