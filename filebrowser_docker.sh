#!/usr/bin/env bash
#
# FileBrowser #
###############
#
# web based file explorer
#
# https://filebrowser.org/installation
#

docker run -d \
    --name=filebrowser \
    -v /home/$USER:/srv \
    -v /home/$USER/filebrowser:/database/filebrowser.db \
    -v /home/$USER/filebrowser:/config/settings.json \
    -e PUID=$(id -u) \
    -e PGID=$(id -g) \
    -p 8080:80 \
    filebrowser/filebrowser     