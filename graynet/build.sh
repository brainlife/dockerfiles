#docker build -t brainlife/fsl .

tag=0.4.9
docker build -t brainlife/graynet . && \
    docker tag brainlife/graynet brainlife/graynet:$tag && \
    docker push brainlife/graynet:$tag
