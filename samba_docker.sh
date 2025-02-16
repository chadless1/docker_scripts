#!/usr/bin/env bash
#
# Samba #
#########
#
# samba server
#
# for guest/public share
# remove all user tags
# change share to all instead of user
# -e SHARE="smb_share;/share;yes;no;yes;all"
#
# https://hub.docker.com/r/dperson/samba
#

docker run -d \
        --name=samba \
        -p 139:139 \
        -p 445:445 \
        -e PUID=1000 \
        -e PGID=1000 \
        -e USERID=1000 \
        -e GROUPID=1000 \
        -e PERMISSIONS=true \
        -e USER="guest;guest" \
        -e SHARE="smb_share;/share;yes;no;yes;guest" \
        -v /home/$USER/smb_share:/share \
        --restart=unless-stopped \
        dperson/samba:latest 