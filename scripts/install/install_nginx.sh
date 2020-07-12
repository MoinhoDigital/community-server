#!/bin/bash

sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo /etc/init.d/nginx start
