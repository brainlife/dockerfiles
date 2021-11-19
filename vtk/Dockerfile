FROM python:3.7

RUN apt-get update && apt-get install --yes build-essential libgl1-mesa-glx
RUN pip install vtk==8.1.2

#make sure it runs on singularity.. ?
RUN ldconfig

#not sure if we need to do this?
ENV PYTHONNOUSERSITE=true
