#!/usr/bin/env bash
#
# Minecraft docker server #
###########################
#
# https://github.com/itzg/docker-minecraft-server
#

docker run -d -it -p 25565:25565 -e EULA=TRUE --name minecraft itzg/minecraft-server