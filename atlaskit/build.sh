#docker build -t brainlife/fsl .

tag=1.0
docker build -t brainlife/atlaskit . && \
    docker tag brainlife/atlaskit brainlife/atlaskit:$tag && \
    docker push brainlife/atlaskit:$tag

