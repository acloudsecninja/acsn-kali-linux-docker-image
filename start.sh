#!/bin/bash

# Set the USER environment variable
export USER=root

# Define a password (change this to your preferred password)
VNC_PASS="YourStrongPassword"

# Create the VNC password file and set the password
mkdir -p ~/.vnc
echo "$VNC_PASS" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Start the VNC server
vncserver :1 -geometry 1280x720 -depth 24 -nolisten tcp

# Start websockify
cd /noVNC
./utils/websockify/run --web ./ 6080 localhost:5901 &

# Keep the script running
tail -F ~/.vnc/*.log
