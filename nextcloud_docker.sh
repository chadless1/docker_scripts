#!/usr/bin/env bash
#
# NextCloud #
#############
#
# personal cloud platform
#
# https://docs.linuxserver.io/images/docker-nextcloud/
#

docker run -d \
  --name=nextcloud \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -p 443:443 \
  -p 80:80 \
  -v /home/$USER/nextcloud/data:/data \
  -v /home/$USER/nextcloud/config:/config \
  --restart unless-stopped \
  linuxserver/nextcloud