#!/bin/bash
dnf -y update
dnf -y install python3-pip \
  python3-devel \
  python3-tox \
  git \
  gcc \
  sudo \
  iproute \
  patch
