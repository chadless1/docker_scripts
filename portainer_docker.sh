#!/usr/bin/env bash
#
# Portainer #
#############
#
# web based docker manager
#
# https://hub.docker.com/r/portainer/portainer-ce
#

docker run -d \
-p 8000:8000 \
-p 9000:9000 \
--name=portainer \
--restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /home/$USER/portainer/data:/data \
portainer/portainer-ce