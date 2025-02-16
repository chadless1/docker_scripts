#!/usr/bin/env bash
#
# Guacamole #
#############
#
# web based vnc and ssh client
# 
# https://hub.docker.com/r/flcontainers/guacamole
#

docker run -d \
  --name=guac \
  -p 8080:8080 \
  -v /home/$USER/guac:/config \
  --restart=unless-stopped \
  flcontainers/guacamole