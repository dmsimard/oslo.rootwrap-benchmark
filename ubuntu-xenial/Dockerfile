FROM ubuntu:xenial
MAINTAINER David Moreau-Simard <dmsimard@redhat.com>

COPY files/* /tmp/
RUN bash /tmp/setup.sh; rm -f /tmp/setup.sh
RUN bash /tmp/warmup.sh; rm -f /tmp/warmup.sh

CMD bash /tmp/run.sh
