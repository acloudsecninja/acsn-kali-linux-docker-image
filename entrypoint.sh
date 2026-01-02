#!/bin/bash

# Start VNC server
/usr/bin/vncserver :0 -geometry 1280x800 -depth 24

# Start websockify
websockify --web /usr/share/novnc/ 8080 localhost:5900

# Prevent the container from exiting
tail -f /dev/null
