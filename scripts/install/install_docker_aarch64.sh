#!/bin/bash

# Install Docker and add user to docker group
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
sudo gpasswd -a $USER docker && sudo chmod 664 /var/run/docker.sock
# Install dependencies and docker-compose
sudo apt update -y
sudo apt install -y exfat-fuse ntfs-3g
sudo apt install -y vim git libffi-dev libssl-dev gcc
sudo apt install -qy python-pip --no-install-recommends
pip install pip --upgrade
pip install docker-compose