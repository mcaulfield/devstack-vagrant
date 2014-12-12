#!/bin/bash

set -e -x

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install git
sudo agt-get -y install pip
sudo apt-get -y install pip
sudo apt-get -y install python-pip
sudo apt-get -y install curl
sudo apt-get -y install python-dev
sudo apt-get -y install libxml2-dev
sudo apt-get -y install libxslt1-dev
sudo apt-get -y install libffi-dev
sudo apt-get -y install screen
sudo apt-get -y install python-mysqldb
sudo apt-get -y install bc
sudo apt-get -y install tgt

sudo pip install netifaces

git clone -b stable/icehouse https://github.com/openstack-dev/devstack.git
cp localrc devstack/
./stack.sh 

