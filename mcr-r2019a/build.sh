#!/bin/bash

set -e
set -x

docker build -t brainlife/mcr:r2019a .
docker push brainlife/mcr

