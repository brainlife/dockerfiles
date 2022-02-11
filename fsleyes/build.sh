set -x
set -e
docker build -t brainlife/fsleyes . 
docker tag brainlife/fsleyes brainlife/fsleyes:0.32.3
docker push brainlife/fsleyes
