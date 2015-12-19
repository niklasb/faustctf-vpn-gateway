https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-14-04

Notes:
* needed to get rid of AppArmor to allow tcpdump to write into webroot
* Should really filter out traffic from own subnet (to our own VM or others)
