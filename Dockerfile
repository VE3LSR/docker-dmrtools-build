FROM python:2.7.14
MAINTAINER projects@ve3lsr.ca

# RUN apt-get update && apt-get install -yq git && apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

WORKDIR /opt/

RUN git clone https://github.com/n0mjs710/dmr_utils.git

WORKDIR /opt/dmr_utils

ADD copy.sh /opt

RUN python setup.py sdist


