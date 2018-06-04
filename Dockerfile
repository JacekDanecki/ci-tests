FROM docker.io/ubuntu:16.04
MAINTAINER Jacek Danecki <jacek.danecki@intel.com>

COPY repo /root/repo
COPY test2 /root/test2

RUN apt-get -y update; apt-get install -y --allow-unauthenticated git
RUN /root/test2

CMD ["/bin/bash"]
