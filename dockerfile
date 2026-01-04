# Use the official Kali Linux base image
FROM kalilinux/kali-rolling

# Update and install any needed packages
RUN apt-get update && \
    apt-get install -y \
    # Add any additional packages you'd like to install here
    && apt-get clean

# Set the default command
CMD ["/bin/bash"]
