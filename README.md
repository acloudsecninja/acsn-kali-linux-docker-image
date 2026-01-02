# acsn-kali-linux-docker-image (In Progress)
A Cloud Security Ninja LLC 
- Kali Linux Docker Image


- Run the following command to get kali linux to work via the CLI in docker and from your windows machine via ssh / putty.

1. Run this command below
```bash
docker system prune --all --force
```

2. Build the image.
```bash
docker-compose up --build
```

3. Access the kali linx container via your local physical machine.

```bash
docker exec -it kali_container /bin/bash
```

4. The other option is to get to the kali linux system via the windows machine you created earlier.



* For Testing only. Do not use in production environments.

Created and Maintained by - A Cloud Security Ninja LLC