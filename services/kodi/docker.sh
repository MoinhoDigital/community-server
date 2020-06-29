#!/bin/bash

docker run -it --name=kodi-headless \
-d \
-v $HOME/kodi:/config/.kodi \
-v /media/hdvideos:/movies \
-e PGID=gid -e PUID=uid \
-p 8080:8080 \
-p 9090:9090 \
-p 9777:9777/udp \
lsioarmhf/kodi-headless

docker run -it \
  -d \
  --net=host	\
  --name=plex \
  -e PUID=1000 \
  -e PGID=1000 \
  -e VERSION=docker \
  -v $HOME/plex-config:/config \
  -v /media/hdvideos/tvseries:/tv \
  -v /media/hdvideos/movies:/movies \
  --restart unless-stopped \
  linuxserver/plex
