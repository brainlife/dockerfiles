docker build -t ants-2.3.1 .

# locally tag
docker tag ants-2.3.1:latest brainlife/ants-docker:2.3.1

# push to Docker Hub
docker push brainlife/ants-docker:2.3.1
# (and optionally:)
docker push brainlife/ants-docker:latest
