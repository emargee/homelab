#!/bin/sh
# This script to be used in conjunction with boostchickens
# on-boot-script.

# This basically just adds anothe conf file into the
# UDM's dnsamsq folder and reboots it (pkill at the end)
# to pick up the new file

# Change below as required IP & 'domain.tld'

cat > /run/dnsmasq.conf.d/local_custom_dns.conf <<- "EOF"
# Created by a UDM-Utilities run script
# Change the domains and IP address to your own
address=/onepiece.home.local/192.168.0.10
EOF
 
# Restart dnsmasq so it sees the new conf file
pkill dnsmasq

