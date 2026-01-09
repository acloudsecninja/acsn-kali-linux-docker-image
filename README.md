# acsn-kali-linux-docker-image
Used for A Cloud Security Ninja LLC - Kali Linux Docker Image


1. Run this command below to clean all uneeded files or start over in the process.
```bash
docker system prune --all --force
```

2. Run this command below to start and build the container.
```bash
docker compose up -d
```

3. Once its created then run the command which will log you into the console or use docker desktop directly.

```bash
docker exec -it kali_container /bin/bash
```


4. Install namp for example
```bash
apt-get install nmap
```

** Default Container Information **

```bash
kali - Username
kali - Password
```


* Do not Use this in a Production Environment

- Created and Maintained by - A Cloud Security Ninja LLC - 

- For Information contact us at @ (https://www.acloudsec.ninja/booking-calendar/free-15-minute-consultation)