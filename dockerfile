# Use the official Kali Linux base image
FROM kalilinux/kali-rolling

# Install necessary packages
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-terminal \
    xvfb \
    x11vnc \
    novnc \
    tigervnc-standalone-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set a password for VNC
RUN mkdir ~/.vnc && \
    echo "your_password" | vncpasswd -f > ~/.vnc/passwd && \
    chmod 600 ~/.vnc/passwd

# Expose the VNC port and noVNC port
EXPOSE 5900 8080

# Add an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
