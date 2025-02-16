#!/usr/bin/env bash
#
# ShellinABox #
###############
#
# runs shell in a web browser for host user
#
# https://hub.docker.com/r/spali/shellinabox
#

docker run -d \
    --name shellinabox \
    -p 4200:4200 \
    -e SHELLINABOX_SERVICE_HOST=host \
    -e SHELLINABOX_SERVICE_WHO=who \
    -e SHELLINABOX_SERVICE_LOCAL=local \
    -e SHELLINABOX_ALLOW_SUDO=1 \
    -e SHELLINABOX_DISABLE_SSL=1 \
    -e SHELLINABOX_DEFAULT=host \
    spali/shellinabox