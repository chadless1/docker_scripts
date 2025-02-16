#!/usr/bin/env bash
#
# Jellyfin #
############
#
# home media server
# stream your movies, tv and music
#
# https://docs.linuxserver.io/images/docker-jellyfin/
#

docker run -d \
  --name=jellyfin \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -p 7359:7359/udp `#optional` \
  -p 1900:1900/udp `#optional` \
  -v /home/$USER/jellyfin:/config \
  -v /home/$USER/jellyfin/tvshows:/data/tvshows \
  -v /home/$USER/jellyfin/movies:/data/movies \
  --device=/dev/dri:/dev/dri `#optional for intel gpu passthrough` \
  --restart unless-stopped \
  lscr.io/linuxserver/jellyfin:latest