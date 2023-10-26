#FROM continuumio/anaconda3
FROM python:3.10

RUN pip3 install mne==1.2.1 pyvista nibabel

RUN pip install matplotlib scikit-learn pandas seaborn jupyter pyvista ipyvtklink 

#requested by guio
RUN pip install https://api.github.com/repos/autoreject/autoreject/zipball/master

#install mne-bids-pipeline somewhere
RUN pip install mne-bids coloredlogs tqdm pandas json_tricks fire nibabel IPython ipywidgets
RUN git clone https://github.com/mne-tools/mne-bids-pipeline.git /mne-bids-pipeline

RUN apt-get update && apt-get -y install libgl1 mesa-utils libgl1-mesa-glx xvfb

ENV PYVISTA_OFF_SCREEN=true
ENV PYVISTA_USE_IPYVTK=true

# ADD test.py /test.py
# RUN python3 /test.py
