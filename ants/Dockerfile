# 1) Base image
FROM ubuntu:20.04
MAINTAINER Gabriele Amorosino

# 2) Install system prerequisites for conda & unzip
RUN set -xe \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
      wget bzip2 ca-certificates curl unzip git \
 && rm -rf /var/lib/apt/lists/*

# 3) Install Miniconda
ENV CONDA_DIR=/opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh \
 && bash /tmp/miniconda.sh -b -p $CONDA_DIR \
 && rm /tmp/miniconda.sh \
 && $CONDA_DIR/bin/conda clean -afy

ENV PATH=$CONDA_DIR/bin:$PATH

# 4) Create & activate a conda env with ANTs 2.3.1 from aramislab
RUN conda update -y conda \
 && conda create -y -n ants-env ants=2.3.1=hf484d3e_0 -c aramislab \
 && conda clean -afy

# 5) Make sure the env is activated by default
SHELL ["conda", "run", "-n", "ants-env", "/bin/bash", "-c"]

# 6) Clone the HCP Pipelines repo
RUN git clone https://github.com/Washington-University/HCPpipelines.git /opt/HCPpipelines

# 7) Download & unpack the four MNI152 templates into /atlas
RUN mkdir -p /atlas \
 && curl -fsSL http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_asym_09c_nifti.zip \
      -o /tmp/tmp.zip \
 && unzip -o /tmp/tmp.zip -d /atlas && rm /tmp/tmp.zip \
 && curl -fsSL http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09c_nifti.zip \
      -o /tmp/tmp.zip \
 && unzip -o /tmp/tmp.zip -d /atlas && rm /tmp/tmp.zip \
 && curl -fsSL http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_asym_09a_nifti.zip \
      -o /tmp/tmp.zip \
 && unzip -o /tmp/tmp.zip -d /atlas && rm /tmp/tmp.zip \
 && curl -fsSL http://www.bic.mni.mcgill.ca/~vfonov/icbm/2009/mni_icbm152_nlin_sym_09a_nifti.zip \
      -o /tmp/tmp.zip \
 && unzip -o /tmp/tmp.zip -d /atlas && rm /tmp/tmp.zip

# 8) Set ANTSPATH and PATH for ANTs
ENV ANTSPATH=/opt/conda/envs/ants-env/bin
ENV PATH=$ANTSPATH:$PATH

# 9) Default to bash in the ants env
CMD ["bash"]
