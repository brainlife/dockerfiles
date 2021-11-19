set -e
docker build -t brainlife/tensorflow . 
docker tag brainlife/tensorflow brainlife/tensorflow:1.14.0 
docker push brainlife/tensorflow
