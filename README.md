# ODF, OFM and Mininet install scripts

Script to install OpenDaylight (karaf), OpenFlow Manager and mininet as well as configure them using vagrant. This script was made to reduce the tears and suffering of my fellow college students.

## Getting Started

If you're here for the LTI Class, check the EXTRAS section, after installing.

### Prerequisites

Software you need to run this:

```
Vagrant
VirtualBox
```

### Installing

A step by step on how to use the script.

In the vagrantfile folder run

```
vagrant up
```

This will create 3 VMs and install everything you need. After the script finishes you need to do some things. You will need to ssh into the machines, that can be done by simply running "vagrant ssh <machine name>".

ODL machine:

```
vagrant ssh odl
./alias.sh
sudo reboot
```
This makes you able to run "karaf" and immediatly execute ODL.

Mininet machine:
```
vagrant ssh mininet
./alias.sh
sudo reboot
```
This makes you able to run "network" and create a 4 switch network.

OFM machine:
```
vagrant ssh ofm
./alias.sh
sudo reboot
```
This makes you able to run "grunt-cli" and run grunt in the correct folder.


## Usage
I recommend a tiling terminal, like tilix here.
![alt text](https://raw.githubusercontent.com/baiox86/odf-ofm-mininet-install/master/img/tilix.png)

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
When you are on opendaylight you can simply run lti instead of the full command.


## Authors

* **Bruno Francisco** - *Initial work*

## License

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used

