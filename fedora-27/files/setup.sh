#!/bin/bash
yum -y update
yum -y install python-setuptools \
  python-devel \
  git \
  gcc \
  sudo \
  iproute \
  patch

easy_install pip
pip install tox
