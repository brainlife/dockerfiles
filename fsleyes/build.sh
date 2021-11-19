set -x
set -e
docker build -t brainlife/fsleyes . 
docker tag brainlife/fsleyes brainlife/fsleyes:1.0
docker push brainlife/fsleyes
