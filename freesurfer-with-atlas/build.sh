docker build -t brainlife/freesurfer-with-atlases . && \
    docker tag brainlife/freesurfer-with-atlases brainlife/freesurfer-with-atlases:6.0.0 && \
    docker push brainlife/freesurfer-with-atlases
