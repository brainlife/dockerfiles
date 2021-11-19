#!/bin/bash
set -e
set -x

tag=1.2

docker build -t soichih/sensu .
docker tag soichih/sensu soichih/sensu:$tag
docker push soichih/sensu:$tag
