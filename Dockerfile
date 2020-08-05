# Copyright (c) 2020 Jim Tyhurst. 
# Distributed under the terms of the Modified BSD License.
#
# This image is based on a Jupyter-managed image:
#   https://hub.docker.com/r/jupyter/scipy-notebook/dockerfile
# which is copyright by Jupyter Development Team.
#
# I added a few more libraries in this Dockerfile that I need
# for some machine learning applications.
FROM jupyter/scipy-notebook:1a66dd36ff82

LABEL maintainer="Jim Tyhurst <jim@tyhurst.com>"

RUN pip install \
    'ipython-pytest==0.0.1' \
    'pytest==6.0.1' \
    'scikit-plot==0.3.7' \
    'black==19.10b0' \
    'Unidecode==1.1.1' \
    'jupyter_contrib_nbextensions==0.5.1' \
    'geonamescache==1.2.0' \
    'plotnine==0.7.1' \
    'yellowbrick==1.1' \
    'nltk==3.5' \
    'spacy==2.3.2' \
    'gensim==3.8.3' \
    && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

