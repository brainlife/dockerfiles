set -x
set -e

version=4.2-6775
docker build --build-arg VERSION=$version -t brainlife/r-ergm .
docker push brainlife/r-ergm:$version
docker tag brainlife/r brainlife/r-ergm:latest
docker push brainlife/r-ergm
