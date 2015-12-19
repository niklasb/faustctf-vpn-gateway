#!/bin/bash
#strace tcpdump -G 300 -w ~/dumps/dump
tcpdump -G 3600 -w '/var/www/html/dumps/trace_%Y-%m-%d_%H:%M:%S.pcap' -Z root -i game
