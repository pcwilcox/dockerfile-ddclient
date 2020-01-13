# Dockerfile for DDClient
#
# Version   1.1
FROM        ubuntu:bionic
# MAINTAINER  Brian Clements <brian@brianclements.net>
MAINTAINER  Pete Wilcox <petercwilcox@gmail.com>


# Select your closest mirror from...
# East Coast US:                        us-east-1.ec2.archive
# West Coast US (California):           us-west-1.ec2.archive
# West Coast US (Oregon):               us-west-2.ec2.archive
# South America (São Paulo, Brazil):    sa-east-1.ec2.archive
# Western Europe (Dublin, Ireland):     eu-west-1.ec2.archive
# SouthEast Asia (Singapore):           ap-southeast-1.ec2.archive
# NorthEast Asia (Tokyo):               ap-northeast-1.ec2.archive
# ... and assign MIRROR below with your selection
# ENV MIRROR  us-west-1.ec2.archive
# RUN         sed "s@archive@$MIRROR@" -i /etc/apt/sources.list

# Install packages
RUN         apt-get -q update
ENV DEBIAN_FRONTEND noninteractive
RUN         apt-get -qy install ssh libio-socket-ssl-perl ddclient

# Add configuration files
ADD         ddclient /etc/default/ddclient
ADD         ddclient.conf /etc/ddclient.conf
ADD         entrypoint.sh /opt/entrypoint.sh
RUN         chmod +x /opt/entrypoint.sh

ENTRYPOINT  ["/opt/entrypoint.sh"]
