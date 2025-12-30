FROM kalilinux/kali-rolling

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y xfce4 xfce4-terminal tightvncserver git python3 python3-pip websockify && \
    apt-get clean

# Clone noVNC and websockify
RUN git clone https://github.com/novnc/noVNC.git /noVNC && \
    git clone https://github.com/novnc/websockify.git /noVNC/utils/websockify

# Add the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
