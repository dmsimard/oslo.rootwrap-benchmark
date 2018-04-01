#!/bin/bash
date
pushd oslo.rootwrap
    echo "Tox version: $(tox --version)"
    time .tox/benchmark/bin/python benchmark/benchmark.py
popd
date
