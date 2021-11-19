docker pull neurodebian:nd16.04

set -e

docker build -t brainlife/ants . 
docker tag brainlife/ants brainlife/ants:2.2.0-1bc
docker push brainlife/ants
