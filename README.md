# acsn-kali-linux-docker-image (In Progress)
A Cloud Security Ninja LLC 
- Kali Linux Docker Image


- Run the following command to get kali linux to work via the CLI in docker and from your windows machine via ssh / putty.


1. Build the image.
```bash
docker-compose up --build
```

2.  Once it says started then you can go into Docker Desktop and see that the container is downloading Windows 10 from Microsoft. You should see a percentage and it may take up to 10 minutes to download. It will make a local windows folder that holds the ISO and information tied to the container. Please keep this while you are using it ,but do not upload to the github repos as its too large. I have this ignored already using .gitignore method. If you delete though you will need to re configure everything. 

3. Once the Docker Container is downloaded. The next step is to get into the Windows System which will you will install Kali Linux tools for windows and Linux Subsystem. It should be something similar to http://127.0.0.1:8007.

4.  Once its up then you will install Kali Linux tools on the windows system and make sure you can do a basic attack at the other windows system.

5. Go back to the Instructions to determine the rest of the requirments of the lab.


* For Testing only. Do not use in production environments.

Created and Maintained by - A Cloud Security Ninja LLC