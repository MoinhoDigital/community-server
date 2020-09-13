#!/bin/bash
curl -L https://github.com/Tzahi12345/YoutubeDL-Material/archive/master.zip -o youtubedl-material-docker.zip
unzip youtubedl-material-docker.zip
mv Dockerfile YoutubeDL-Material-master/
docker-compose up -d

