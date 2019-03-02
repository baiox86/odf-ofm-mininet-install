#!/bin/bash

sudo apt-get update && sudo apt-get install
sudo apt-get install -y openjdk-8-jre-headless unzip
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/karaf/0.7.2/karaf-0.7.2.zip
unzip karaf-0.7.2.zip
rm karaf-0.7.2.zip
echo "echo \"alias karaf='sudo ./karaf-0.7.2/bin/karaf'\" >> ~/.bashrc" >> ./alias.sh

echo "echo \"\" >> ./karaf-0.7.2/etc/shell.init.script"  >> ./odllti.sh
echo "echo \"lti = { feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core odl-dluxapps-applications odl-dluxapps-topology odl-dluxapps-yangutils ; } \" >> ./karaf-0.7.2/etc/shell.init.script"  >> ./odllti.sh

chmod +x ./alias.sh
chmod +x ./odllti.sh