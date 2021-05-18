FROM jupyter/datascience-notebook

USER root

RUN apt-get update &&\
    apt-get install -y libpq-dev