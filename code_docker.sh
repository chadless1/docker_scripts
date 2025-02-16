#!/usr/bin/env bash
#
# VS Code Server #
##################
#
# run vs code in the browser
#
# https://docs.linuxserver.io/images/docker-code-server/
#

docker run -d \
  --name=code-server \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -e SUDO_PASSWORD=code \
  -p 8443:8443 \
  -v /home/$USER/code-server:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/code-server