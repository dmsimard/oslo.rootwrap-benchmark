#!/bin/bash
git clone https://git.openstack.org/openstack/oslo.rootwrap
# Since we're interested in benchmarking, don't follow HEAD
pushd oslo.rootwrap
    # add lower-constraints job fbc837e75a6cbc58176b2908699d278d201b1bec
    git checkout fbc837e75a6cbc58176b2908699d278d201b1bec
    # Patch py3 incompatible code out
    patch -p1 </tmp/0001-Remove-py3-incompatible-assertions.patch
    # Warm up tox, we're not benchmarking installation time
    tox -e benchmark --notest
popd
