#!/bin/bash

set -x
set -e

docker build -t brainlife/dipy .
docker tag brainlife/dipy brainlife/dipy:1.4.0
docker push brainlife/dipy
