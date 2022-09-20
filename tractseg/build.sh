#!/bin/bash
set -ex
tag=2.7
docker build -t brainlife/tractseg . 
docker tag brainlife/tractseg brainlife/tractseg:$tag
docker push brainlife/tractseg:$tag
