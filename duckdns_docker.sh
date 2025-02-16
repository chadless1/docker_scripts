#!/usr/bin/env bash
#
# DuckDNS #
###########
#
# DNS for home public IP
# update server with public ip
#
# https://docs.linuxserver.io/images/docker-duckdns/
#

docker run -d \
  --name=duckdns \
  -e PUID=1000 `#optional` \
  -e PGID=1000 `#optional` \
  -e TZ=America/New_York \
  -e SUBDOMAINS=subdomain1,subdomain2 \
  -e TOKEN=token \
  -e LOG_FILE=false `#optional` \
  -v /home/$USER/duckdns:/config `#optional` \
  --restart unless-stopped \
  lscr.io/linuxserver/duckdns:latest