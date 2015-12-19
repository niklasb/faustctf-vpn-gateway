#!/bin/bash
# we want to forward between game (VPN client connection to organizer)
# and tun0 (accepting our own VPN connections)
iptables -P FORWARD DROP
# allow inbound traffic to subnet only as responses
iptables -A FORWARD -d 10.66.146.0/24 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT -i game
# allow inbound traffic to vulnbox
iptables -A FORWARD -d 10.66.146.2 -j ACCEPT -i game
# allow outbound traffic
iptables -A FORWARD -s 10.66.146.0/24 -j ACCEPT -i tun0
