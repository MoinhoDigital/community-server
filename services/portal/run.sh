#!/bin/bash
# curl -L https://github.com/moinhodigital/community-portal/archive/master.zip -o community-portal.zip
curl -L https://github.com/moinhodigital/tile-server/archive/master.zip -o tile-server.zip

# unzip commmunity-portal.zip
unzip tile-server.zip

docker-compose up -d

