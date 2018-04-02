#!/bin/bash
releases="ubuntu-xenial fedora-27 centos-7"
for release in $releases
do
    mkdir -p $release/results
    log="$(uname -r)_permissive_$(date +%s).log"
    docker run -it dmsimard/oslo.rootwrap-benchmark:$release |tee -a $release/results/$log
    sleep 30
done
