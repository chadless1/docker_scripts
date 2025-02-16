#!/usr/bin/env bash
#
# FreshRSS #
############
#
# rss web reader
# can import opml files like from NewsFlash
#
# https://github.com/FreshRSS/FreshRSS/tree/edge/Docker
#

docker run -d --restart unless-stopped --log-opt max-size=10m \
  -p 8080:80 \
  -e TZ=America/New_York \
  -e 'CRON_MIN=1,31' \
  -v /home/$USER/freshrss/data:/var/www/FreshRSS/data \
  -v /home/$USER/freshrss/extensions:/var/www/FreshRSS/extensions \
  --name freshrss \
  freshrss/freshrss