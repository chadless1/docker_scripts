#!/usr/bin/env bash
#
# Uptime Kuma #
###############
#
# web based status monitor
# ping devices and servers
#
# https://hub.docker.com/r/louislam/uptime-kuma
#

docker run -d \
        --restart=always \
        -p 3002:3001 \
        -v /home/$USER/uptime_kuma:/app/data \
        -v /var/run/docker.sock:/var/run/docker.sock \
        --name uptime-kuma \
        louislam/uptime-kuma:1