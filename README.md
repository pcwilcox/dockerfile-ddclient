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
* enter your credentials and information into `ddclient.conf`, `ddclient` can
  remain as is since we won't be using the built-in daemon.
* Remember to select your closest mirror in the `Dockerfile` before building.
* `sudo docker build -t sys/ddclient .`
* `sudo docker run --name="ddclient" sys/ddclient`

## License
MIT
