#!/bin/bash

# TODO: check for fails and retry; hide spam from end user, show only on debug mode
# Install Docker and add user to docker group
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
sudo gpasswd -a $USER docker && sudo chmod 664 /var/run/docker.sock
# Install dependencies and docker-compose
sudo apt update -y
sudo apt install -y exfat-fuse ntfs-3g
sudo apt install -y vim git libffi-dev libssl-dev gcc docker-compose
# Alternative running from container
sudo curl -L --fail https://raw.githubusercontent.com/linuxserver/docker-docker-compose/master/run.sh -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose