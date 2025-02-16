#!/usr/bin/env bash
#
# WebTop #
##########
#
# web based linux desktop
#
# https://docs.linuxserver.io/images/docker-webtop?q=webtop
#
# latest tag = alpine-xfce
# change tag for different DE enviornment
# alpine-i3
# fedora-xfce

docker run -d \
  --name=webtop \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -e SUBFOLDER=/ `#optional` \
  -e KEYBOARD=en-us-qwerty `#optional` \
  -e TITLE=Webtop `#optional` \
  -p 3000:3000 \
  -v /home/$USER/webtop:/config \
  --shm-size="1gb" `#optional` \
  --restart unless-stopped \
  lscr.io/linuxserver/webtop:latest