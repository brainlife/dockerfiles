#!/bin/bash
set -ex
tag=7.1.1
docker build -t brainlife/freesurfer . 
docker tag brainlife/freesurfer brainlife/freesurfer:$tag
docker push brainlife/freesurfer:$tag
