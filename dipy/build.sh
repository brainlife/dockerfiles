#!/bin/bash

set -x
set -e

docker build -t brainlife/dipy .
docker tag brainlife/dipy brainlife/dipy:1.4.1
docker push brainlife/dipy
