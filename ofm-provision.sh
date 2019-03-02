#!/bin/bash

sudo apt-get update && sudo apt-get install
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs aptitude
sudo aptitude install -y npm
sudo apt-get install -y git
sudo npm install -g grunt-cli

echo "git clone https://github.com/CiscoDevNet/OpenDaylight-Openflow-App.git" >> ./firsttouches.sh
echo "sed -i 's/localhost/10.10.10.2/g' ./OpenDaylight-Openflow-App/ofm/src/common/config/env.module.js" >> ./firsttouches.sh
echo "cd OpenDaylight-Openflow-App/ && sudo npm install" >> ./firsttouches.sh

chmod +x ./firsttouches.sh