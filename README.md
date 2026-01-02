# acsn-kali-linux-docker-image (In Progress)
A Cloud Security Ninja LLC 
- Kali Linux Docker Image


- Run the following command to get kali linux to work with a GUI in docker. vnc server will prompt you to set up a password so make sure to remember it.


1. Build and name the docker image.
```bash
docker build -t kali .
```

2. Create the network so It can be on your physical network.

```bash
docker network create --driver bridge my_bridge_network
```

3. Run the container with the bridge network setup and configuration.

```bash
docker run -d --network mydockernetwork-emu --ip 192.168.1.100 -p 5900:5900 -p 8080:8080 kali

```


* For Testing only. Do not use in production Environments.

Created and Maintained by - A Cloud Security Ninja LLC