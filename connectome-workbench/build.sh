#!/bin/bash
set -x
set -e
tag=1.5.0
docker build --build-arg version=$tag -t brainlife/connectome_workbench . 
docker tag brainlife/connectome_workbench brainlife/connectome_workbench:$tag
docker push brainlife/connectome_workbench:$tag
