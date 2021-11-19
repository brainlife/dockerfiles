#docker build -t brainlife/fsl .

set -e

tag=4.0.0
name=octave
docker build -t brainlife/$name .
docker tag brainlife/$name brainlife/$name:$tag
docker push brainlife/$name:$tag


