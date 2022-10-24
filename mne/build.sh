
set -e

#tag=0.24dev.1
#tag=1.0.3
tag=1.2.1

docker build -t brainlife/mne . 
#docker tag brainlife/mne brainlife/mne:$tag
#docker push brainlife/mne
#docker push brainlife/mne:$tag
