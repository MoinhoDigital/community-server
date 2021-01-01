#!/bin/bash

curl -L https://gitlab.com/coletivo-coolab/rede-social-comunitaria/-/archive/master/rede-social-comunitaria-master.zip -o app.zip
unzip app.zip
docker-compose up -d
