FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

#build requirements
RUN apt-get update && apt-get install -y python3-pip 

#software-properties-common && add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.7 && update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 && update-alternatives --set python3 /usr/bin/python3.7

RUN apt-get update && apt-get install -y libpython3.8-dev libglu1-mesa cmake g++ git python3.8-distutils

#extras
RUN apt-get install -y jq vim

RUN python3.8 -m pip install Cython scipy dipy numpy nibabel vtk

#compile / install trekker
RUN git clone https://github.com/dmritrekker/trekker /trekker
#RUN wget https://github.com/dmritrekker/trekker/archive/refs/tags/v0.8.tar.gz && tar -xvf v0.8.tar.gz
#RUN mkdir -p /trekker/build/Linux && cd /trekker/build/Linux && cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release -DBuild_Python3_WRAPPER=ON -DPython3_EXECUTABLE=python3 ../../
#RUN cd /trekker/build/Linux && cmake --build . --config Release --target install --parallel 8
RUN cd /trekker && . ./build_Linux.sh
RUN pip3 install /trekker/binaries/Trekker-0.9-cp38-cp38-linux_x86_64.whl
