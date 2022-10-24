#!/bin/bash

set -e
set -x

docker build -t brainlife/archive .
docker push brainlife/archive

