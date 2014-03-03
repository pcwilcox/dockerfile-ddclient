## Dockerfile-ddclient
Dockerfile and configuration for ddclient using opendns and dnsomatic.

## Setup
* Opendns.com
    * make account
    * create network configuration mapping to your ip address
    * in "Advanced Settings" for that network, check "Dynamic IP Update"
* DNS-O-Matic
    * make account
    * "Add a service" for OpenDNS and link it to the network created at
      Opendns.com

## Build
* `sudo docker build -t sys/ddclient .`
* `sudo docker run --name="ddclient" sys/ddclient`
