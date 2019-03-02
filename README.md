# ODF, OFM and Mininet install scripts

Script to install OpenDaylight (karaf), OpenFlow Manager and mininet as well as configure them using vagrant. This script was made to reduce the tears and suffering of my fellow college students. It even installs a webserver using grunt.

## Getting Started

If you're here for the LTI Class, check the EXTRAS section, after installing.

### Prerequisites

Software you need to run this:
-Vagrant
-VirtualBox


### Installing

A step by step on how to use the script.

In the vagrantfile folder run

```
vagrant up
```

This takes a while and will create 3 Ubuntu Server 16.04 LTS VMs and install everything you need. After the script finishes you need to do some things. You will need to ssh into the machines, that can be done by simply running "vagrant ssh <machine name>".

ODL machine:

```
vagrant ssh odl
./alias.sh
source ~/.bashrc
```
This makes you able to run "karaf" and immediatly execute ODL.

Mininet machine:
```
vagrant ssh mininet
./alias.sh
source ~/.bashrc
```
This makes you able to run "network" and create a 4 switch network.

OFM machine:
```
vagrant ssh ofm
./alias.sh
./lasttouches.sh
source ~/.bashrc
```
This installs OFM app and makes you able to run "grunt-lti" to run grunt in the correct folder.


## Usage
I recommend a tiling terminal, like tilix here.
![alt text](https://raw.githubusercontent.com/baiox86/odf-ofm-mininet-install/master/img/tilix.png)

Run the following.
ODL machine: 
```
karaf
```
Mininet machine:
```
network
```
OFM machine:
```
grunt-lti
```
Now you have the following setup.

![alt text](https://raw.githubusercontent.com/baiox86/odf-ofm-mininet-install/master/img/finalsetup.png)

### IP adresses and port fowarding

1. ODL:
   -10.10.10.2
   -guest: 8181, host: 58181
2. Mininet:
 -10.10.10.3
3. OFM:
   -10.10.10.4
   -guest: 9000, host: 19000

To access, for example, the OFM machine you go to your browser and run:
```
localhost:19000
```
## Extras

ODL machine:
When you run:
```
sudo ./odllti.sh
```
It will add an alias to the following command:
```
feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core odl-dluxapps-applications odl-dluxapps-topology odl-dluxapps-yangutils
```
When you are on opendaylight you can simply run lti instead of the full command to install the needed packages.


## Authors

* **Bruno Francisco** - *Initial work*

## License

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used

