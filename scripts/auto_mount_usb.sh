#!/bin/bash
# https://raspberrytips.com/mount-usb-drive-raspberry-pi/
sudo blkid | grep UUID=
sudo echo "UUID=321847FA46DFBD60  /mnt/usb        vfat    uid=pi,gid=pi   0       0" > /etc/fstab
sudo mount -a

