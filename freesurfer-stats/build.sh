# set -e
docker build -t brainlife/freesurfer-stats .
docker tag brainlife/freesurfer-stats brainlife/freesurfer-stats:1.2
docker push brainlife/freesurfer-stats
