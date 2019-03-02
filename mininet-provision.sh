#!/bin/bash

sudo apt-get update && sudo apt-get install
sudo apt-get install -y mininet

echo "alias network='mn --topo=linear,4 --controller=remote,ip=10.10.10.2,port=6653 --switch ovsk,protocols=OpenFlow13'"  >> ~/.bashrc

