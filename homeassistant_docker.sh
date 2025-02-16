#!/usr/bin/env bash
#
# HomeAssistant #
#################
#
# all your smart home devices in one place
# web based home automation dashboard
#
# https://docs.linuxserver.io/images/docker-homeassistant/
#

docker run -d \
  --name=homeassistant \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York/London \
  -p 8123:8123 `#optional` \
  -v /home/$USER/hass:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/homeassistant:latest