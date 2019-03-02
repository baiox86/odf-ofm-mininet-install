#!/bin/bash

sudo apt-get update && sudo apt-get install
echo "apt-get install -y mininet"  >> ./firsttouches.sh
echo "mn --topo=linear,3" >> ./firsttouches.sh

echo "mn --topo=linear,4 --controller=remote,ip=10.10.10.2,port=6653 --switch ovsk,protocols=OpenFlow13"  >> ./mininet.sh

