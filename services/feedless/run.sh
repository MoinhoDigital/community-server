#!/bin/bash

curl -L https://github.com/rogeriochaves/feedless/archive/master.zip -o app.zip
unzip app.zip
docker-compose up -d
