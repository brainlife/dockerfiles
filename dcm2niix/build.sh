set -x
set -e
version=v1.0.20211006

docker build --build-arg version=$version -t brainlife/dcm2niix .
docker tag brainlife/dcm2niix brainlife/dcm2niix:$version
docker push brainlife/dcm2niix:$version
docker tag brainlife/dcm2niix brainlife/dcm2niix:latest
docker push brainlife/dcm2niix:latest

