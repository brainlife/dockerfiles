
set -e

tag=0.24dev.1

docker build -t brainlife/mne . 
docker tag brainlife/mne brainlife/mne:$tag
docker push brainlife/mne
docker push brainlife/mne:$tag
