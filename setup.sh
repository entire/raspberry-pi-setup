#!/bin/bash 

if [[ $EUID -ne 0 ]]; then 
  echo "This script must be run as root. use sudo su" 1>&2 
  exit 1 
fi 

apt-get update
apt-get upgrade
apt-get install -y git-core wget openssl

# get node
wget http://nodejs.org/dist/v0.10.2/node-v0.10.2-linux-arm-pi.tar.gz
tar -xvzf node-v0.10.2-linux-arm-pi.tar.gz
node-v0.10.2-linux-arm-pi/bin/node --version
