set -x
set -e

docker build -t brainlife/nginx .
docker tag brainlife/nginx brainlife/nginx:1.0
docker push brainlife/nginx:1.0

