#!/bin/bash

sudo apt-get update && sudo apt-get install
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs aptitude
sudo aptitude install -y npm
sudo apt-get install -y git
sudo npm install -g grunt-cli grunt

echo "git clone https://github.com/CiscoDevNet/OpenDaylight-Openflow-App.git" >> ./lasttouches.sh
echo "sed -i 's/localhost/10.10.10.2/g' ./OpenDaylight-Openflow-App/ofm/src/common/config/env.module.js" >> ./lasttouches.sh
echo "cd OpenDaylight-Openflow-App/ && sudo npm install" >> ./lasttouches.sh

chmod +x ./lasttouches.sh