FROM tensorflow/tensorflow:1.14.0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python-tk

RUN pip install numpy
RUN pip install nibabel scikit-image

RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft /scratch /mnt/share1 /share1
