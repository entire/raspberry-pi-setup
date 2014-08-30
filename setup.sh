#!/bin/bash 

if [[ $EUID -ne 0 ]]; then 
  echo "This script must be run as root. use sudo su" 1>&2 
  exit 1 
fi 

apt-get update
apt-get dist-upgrade
apt-get install -y git-core wget openssl
apt-get install vim vim-rt vim-full

# get node
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg -i node_latest_armhf.deb
