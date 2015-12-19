We used this config for FaustCTF to connect to the infrastructure via VPN.
We basically ran the client config provided by the organizer on a DigitalOcean
droplet and then connected to the 10.66.X.0/24 subnet via a VPN server running
on the droplet.

We used easy-rsa to set up the server:
https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-14-04

Notes:
* We needed to get rid of AppArmor to allow tcpdump to write into webroot
* We should really filter out traffic from own subnet (to our own VM or others)
