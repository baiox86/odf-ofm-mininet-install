# ODF, OFM and Mininet install scripts

Script to install OpenDaylight, OpenFlow Manager and mininet as well as configure them using vagrant. This script was made to reduce the tears and suffering of my fellow college students.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

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

This will create 3 VMs and install everything you need. After the script finishes you need to do some things. You will need to ssh into the machines, that can be done by simply running "vagrant ssh <machine name>.

ODL machine:
```
vagrant ssh odl
karaf
#when odl opens up, run:
lti
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Authors

* **Bruno Francisco** - *Initial work*

## License

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used

