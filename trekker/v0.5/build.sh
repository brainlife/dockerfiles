#!/bin/bash
set -ex
tag=0.7
docker build -t brainlife/trekker . 
docker tag brainlife/trekker brainlife/trekker:$tag
docker push brainlife/trekker:$tag
