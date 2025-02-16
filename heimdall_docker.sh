#!/usr/bin/env bash
#
# Heimdall #
############
#
# web based homelab dashbaord
#
# https://docs.linuxserver.io/images/docker-heimdall/
#

docker run -d \
  --name=heimdall \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -p 80:80 \
  -p 443:443 \ #optional
  -v /home/$USER/heimdall/config:/config \
  --restart unless-stopped \
  linuxserver/heimdall