#!/bin/bash

set -e
set -x

tag=210128

docker build -t brainlife/ui-brainstorm . 
docker tag brainlife/ui-brainstorm brainlife/ui-brainstorm:$tag 
docker push brainlife/ui-brainstorm:$tag
