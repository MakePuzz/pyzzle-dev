FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y zsh gcc gfortran \
    && conda install -y python=3.11.9 \
    && conda install -y -n base ipykernel \
    && conda install -y -c conda-forge meson-python ninja numpy

RUN pip install pytest pytest-benchmark

RUN sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && conda init zsh

COPY fonts/* /usr/share/fonts/

COPY install_pyzzle.zsh /root/
RUN chmod +x /root/install_pyzzle.zsh