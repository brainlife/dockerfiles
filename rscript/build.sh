set -x
set -e
version=4.1.2
docker build --build-arg version=$version -t brainlife/rscript .
docker tag brainlife/r brainlife/rscript:$version
docker push brainlife/rscript
