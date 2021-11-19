#docker run --rm -it brainlife/mrtrix3:latest mrconvert -h
singularity exec -e docker://brainlife/mrtrix3:3.0.3 mrconvert --version
