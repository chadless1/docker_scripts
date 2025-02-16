#!/usr/bin/env bash
#
# Dash. #
#########
#
# a web based status dashboard for your server
#
# https://getdashdot.com/docs/installation 
#

docker container run -it -d \
  --name=dashdot \
  -p 8086:3001 \
  -v /etc/os-release:/etc/os-release:ro \
  -v /proc/1/ns/net:/mnt/host_ns_net:ro \
  --privileged \
  mauricenino/dashdot
