#!/bin/bash
apt-get update
apt-get -y upgrade
apt-get -y install python3-pip \
  python3-dev \
  python-tox \
  git \
  sudo
