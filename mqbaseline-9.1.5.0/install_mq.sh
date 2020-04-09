#!/bin/bash

MQ_URL="https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqadv/mqadv_dev915_linux_x86-64.tar.gz"
DIR_EXTRACT=/tmp/mq

# Download and extract the MQ installation files
mkdir -p ${DIR_EXTRACT}
cd ${DIR_EXTRACT}
curl -LO $MQ_URL
tar -zxf ./*.tar.gz
rm -rf *.tar.gz

cd $DIR_EXTRACT/MQServer
./mqlicense.sh -accept
yum -y localinstall MQSeriesRuntime* MQSeriesServer* MQSeriesSamples* MQSeriesGSKit*

su - mqm -c 'echo ". /opt/mqm/bin/setmqenv -s " >> ~/.bashrc'

rm -rf $DIR_EXTRACT/MQServer
