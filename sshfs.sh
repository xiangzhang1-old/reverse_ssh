#!/bin/bash
for hostname in nanaimo irmik hodduk
do
    sudo umount -l /home/xzhang1/Shared/$hostname
    sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 $hostname:/home/xzhang1 /home/xzhang1/Shared/$hostname
done
