#!/bin/bash

sudo apt update -y
sudo apt install git vim -y
git clone https://github.com/MoinhoDigital/tile-server.git
git clone https://github.com/MoinhoDigital/community-portal.git
cd community-portal
cp example.env .env
npm i && npm run build

cd ../tile-server
npm i
cd ..
pm2 serve --spa --name "portal" ./community-portal/dist 3001 
pm2 start ./tile-server --name "tile-server"
pm2 save
pm2 startup