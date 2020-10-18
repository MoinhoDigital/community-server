#!/bin/bash
curl -L https://github.com/roest01/docker-speedtest-analyser/archive/master.zip -o speedtest.zip
unzip speedtest.zip
cp Dockerfile docker-speedtest-analyser-master/
cp docker-speedtest-analyser-master/js/appConfig.example.js docker-speedtest-analyser-master/data/appConfig.js
docker-compose up -d

