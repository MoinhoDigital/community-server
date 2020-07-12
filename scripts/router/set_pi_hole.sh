#!/bin/bash

# https://stackoverflow.com/questions/56309880/changing-dns-settings-in-openwrt-uci-command-line

uci add_list dhcp.@dnsmasq[0].server="10.147.249.54"
uci commit dhcp
/etc/init.d/dnsmasq restart
