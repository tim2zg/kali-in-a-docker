#!/bin/bash

mkdir -p /root/.vnc/
echo $VNCPWD | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

vncserver :0 -rfbport 5900 -geometry 1920x1080 -depth 16

nohup /usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900

/bin/bash