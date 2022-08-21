# set -e
docker build -t brainlife/python-networks .
docker tag brainlife/python-networks brainlife/python-networks:1.0
docker push brainlife/python-networks
