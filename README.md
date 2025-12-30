# acsn-kali-linux-docker-image (In Progress)
A Cloud Security Ninja LLC 
- Kali Linux Docker Image


- Run the following command to get kali linux to work with a GUI in docker. vnc server will prompt you to set up a password so make sure to remember it.


1. Build and name the docker image.
```bash
docker build -t kalilinux-ui .
```

2. Create the network required for this to work properly.
```bash
docker network create --subnet=172.30.0.0/24 kali_net
```

2. Run the named docker image and give it a port to use.
```bash
docker run -d -p 5901:5901 --name acsn-kali-linux-docker-image --net kali_net --ip 172.30.0.5 kalilinux-ui
```

* For Testing only. Do not use in production Environments.

Created and Maintained by - A Cloud Security Ninja LLC