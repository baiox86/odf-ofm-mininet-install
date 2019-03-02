#!/bin/bash

sudo apt-get update && sudo apt-get install
sudo apt-get install -y openjdk-8-jre-headless unzip
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/karaf/0.7.2/karaf-0.7.2.zip
unzip karaf-0.7.2.zip
cd karaf-0.7.2
echo "" >> ./etc/shell.init.script
echo "lti = { feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core odl-dluxapps-applications odl-dluxapps-topology odl-dluxapps-yangutils ; } " >> ./etc/shell.init.script
