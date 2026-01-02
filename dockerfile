# Use the official Kali Linux image
FROM kalilinux/kali-rolling

# Update the package lists and install common tools
RUN apt-get update && \
    apt-get install -y \
    kali-tools-full \
    && rm -rf /var/lib/apt/lists/*

# Set the default command
CMD ["/bin/bash"]
