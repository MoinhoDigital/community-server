#!/bin/bash

# Install Docker and add user to docker group
curl -fsSL https://get.docker.com -o get-docker.sh && sudo gpasswd -a $USER docker && sudo chmod 664 /var/run/docker.sock
# Install dependencies and docker-compose
sudo apt update -y && sudo apt install -y exfat-fuse ntfs-3g vim git libffi-dev libssl-dev python3 python3-pip && sudo pip3 install docker-compose
# Run nginx-proxy
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro lroguet/rpi-nginx-proxy
# Run Portainer
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer