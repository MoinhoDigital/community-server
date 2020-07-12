#!/bin/bash

sudo apt update -y
sudo apt install libffi-dev python3-pip python3-pkg-resources dirmngr -y
sudo pip3 install pip setuptools --upgrade
sudo pip3 install cffi --upgrade

sudo su -c 'echo "deb http://ppa.launchpad.net/learningequality/kolibri/ubuntu bionic main" > /etc/apt/sources.list.d/learningequality-ubuntu-kolibri-bionic.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys DC5BAA93F9E4AE4F0411F97C74F88ADB3194DD81
sudo apt update -y
sudo apt install kolibri kolibri-server -y