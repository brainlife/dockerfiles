#!/bin/bash

# set -e
# set -x

tag=mne-1.11.0_freesurfer-7.4.1

docker build -t brainlife/mne-freesurfer:$tag . 
sudo docker push brainlife/mne-freesurfer:$tag