FROM centos:7 as stage1

USER root
RUN groupadd -g 2000 mqm; useradd -u 2000 -g 2000 -s /bin/bash -d /var/mqm mqm

COPY install_mq.sh /tmp/install_mq.sh
RUN /tmp/install_mq.sh
