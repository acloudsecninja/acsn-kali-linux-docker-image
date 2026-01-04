# Use the official Kali Linux base image
FROM kalilinux/kali-rolling

# Update and install any needed packages
RUN apt-get update && \
    apt-get install -y \
    wget \
    curl \
    iputils-ping \  
    nmap \          
    net-tools \    
    traceroute \   
    iproute2 \
    && apt-get clean

# Set the default command
CMD ["/bin/bash"]
