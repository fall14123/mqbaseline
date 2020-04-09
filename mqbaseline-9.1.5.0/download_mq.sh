#!/bin/bash

# Download and extract the MQ installation files
mkdir -p ${DIR_EXTRACT}
cd ${DIR_EXTRACT}
curl -LO $MQ_URL
tar -zxf ./*.tar.gz
rm -rf *.tar.gz
