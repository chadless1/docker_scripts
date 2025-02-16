#!/usr/bin/env bash
#
# Homarr #
##########
#
# web based homelab dashboard
#
# https://github.com/homarr-labs/homarr
#

docker run  \
  --name homarr \
  --restart unless-stopped \
  -p 8088:7575 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /home/$USER/homarr/configs:/app/data/configs \
  -v /home/$USER/homarr/data:/data \
  -v /home/$USER/homarr/icons:/app/public/icons \
  -v /home/$USER/homarr/imgs:/imgs \
  -d ghcr.io/ajnart/homarr:latest