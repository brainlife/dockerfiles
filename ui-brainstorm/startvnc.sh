#!/bin/bash

echo "$X11VNC_PASSWORD" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

vncserver -rfbport 5900 -geometry 1200x800

echo "tailing to keep it running..."
tail -f ~/.vnc/*.log


