#!/bin/bash
# https://raspberrytips.com/mount-usb-drive-raspberry-pi/
sudo blkid | grep UUID=
sudo echo "UUID=EFF6-A867  /mnt/usb        vfat    uid=pi,gid=pi   0       0" > /etc/fstab
sudo mount -a

