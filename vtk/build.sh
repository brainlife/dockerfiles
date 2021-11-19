#!/bin/bash
set -e
set -x

docker build -t brainlife/python-vtk .
docker tag brainlife/python-vtk brainlife/python-vtk:3.7-8.1.2
docker push brainlife/python-vtk

