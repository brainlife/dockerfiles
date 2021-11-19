
tag=cuda75-fsl509
docker build -t brainlife/fsl-cuda . && \
    docker tag brainlife/fsl-cuda brainlife/fsl-cuda:$tag && \
    docker push brainlife/fsl-cuda:$tag
