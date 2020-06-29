#!/bin/bash
git clone https://github.com/ether/etherpad-lite.git
cd etherpad-lite
docker build --build-arg ETHERPAD_PLUGINS="ep_embedded_hyperlinks2 ep_headings2 ep_image_upload ep_new_pad ep_scrollto ep_spellcheck" -t etherpad/etherpad
docker run --detach --publish 8083:9001 etherpad/etherpad