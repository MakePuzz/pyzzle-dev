FROM continuumio/miniconda3

RUN conda install -y python=3.11.9 \
    && conda install -y -n base ipykernel \
    && conda install -y -c conda-forge meson ninja numpy
