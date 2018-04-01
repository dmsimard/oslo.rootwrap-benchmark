oslo.rootwrap-benchmark
-----------------------

Approximate averages when running from an up to date Fedora 27 laptop:

- Ubuntu: 30s
- CentOS: 33s
- Fedora: 1m39s

Approximate averages when running from an up to date CentOS 7 virtual machine:

- Ubuntu: 41s
- CentOS: 49s
- Fedora: 3m52s

For full raw results, see within the ``results`` directory of each distribution.

Run::

    # Python2 with CentOS 7
    docker run -it dmsimard/oslo.rootwrap-benchmark:centos-7
    # Python3 with Ubuntu Xenial
    docker run -it dmsimard/oslo.rootwrap-benchmark:ubuntu-xenial
    # Python3 with Fedora 27
    docker run -it dmsimard/oslo.rootwrap-benchmark:fedora-27

Example::

    $ docker run -it dmsimard/oslo.rootwrap-benchmark:ubuntu-xenial
    Sun Apr  1 16:46:31 UTC 2018
    /oslo.rootwrap /
    Tox version: 2.3.1 imported from /usr/lib/python3/dist-packages/tox/__init__.py
    Running 'ip a':
            method          :    min       avg       max       dev
                       ip a :   1.281ms   1.475ms   2.220ms 173.989us
                  sudo ip a :   4.781ms   5.101ms   7.685ms 443.115us
    sudo rootwrap conf ip a : 138.289ms 149.347ms 191.314ms   9.056ms
         daemon.run('ip a') :   2.081ms   3.792ms 149.675ms  14.663ms
    Running 'ip netns exec bench_ns ip a':
                        method                     :    min       avg       max       dev
                  sudo ip netns exec bench_ns ip a :   4.766ms   5.273ms   7.098ms 413.297us
    sudo rootwrap conf ip netns exec bench_ns ip a : 138.046ms 143.979ms 160.218ms   4.266ms
         daemon.run('ip netns exec bench_ns ip a') :   2.054ms   2.299ms   3.222ms 218.212us

    real	0m31.342s
    user	0m25.534s
    sys	0m5.257s
    /
    Sun Apr  1 16:47:03 UTC 2018
