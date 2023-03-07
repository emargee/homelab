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
address=/echoserver.home.local/192.168.2.10
address=/hubble.home.local/192.168.2.10
address=/rook.home.local/192.168.2.10
address=/plex.home.local/192.168.2.20
address=/goldilocks.home.local/192.168.2.10
address=/weave.home.local/192.168.2.10
address=/dashboard.home.local/192.168.2.10
address=/minio.home.local/192.168.2.10
address=/minio-console.home.local/192.168.2.10
address=/sonarr.home.local/192.168.2.10
address=/sabnzbd.home.local/192.168.2.10
EOF

# Restart dnsmasq so it sees the new conf file
pkill dnsmasq


