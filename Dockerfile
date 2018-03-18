# This Dockerfile builds an environment for working with
# Achintya Rao's data analysis using R

# The base image comes from the good people at rocker-org
FROM rocker/verse:3.4.3
ADD . /home/rstudio
WORKDIR /home/rstudio
# The next line installs the other packages I use
RUN R -e "(source('init.R'))"
