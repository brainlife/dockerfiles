#!/bin/bash

set -e
set -x

docker build -t brainlife/stage .
docker push brainlife/stage

