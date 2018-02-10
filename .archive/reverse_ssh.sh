#!/bin/sh
# the original reverse ssh. deprecated, but kept just in case.
# autossh -f -N -M 10984 -R 19999:localhost:22 ec2-user@52.205.255.228
# port forwarding
#autossh -M 11900 -fNR */:8080:localhost:5000 ec2-user@52.205.255.228
#autossh -M 11910 -fNR */:8070:localhost:22   ec2-user@52.205.255.228
# sshfs mounting
#for hostname in nanaimo irmik hodduk
#do
#    sudo umount -l /home/xzhang1/Shared/$hostname
#    sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 $hostname:/home/xzhang1 /home/xzhang1/Shared/$hostname
#done
sleep 10
sudo netstat -na
echo 'before running autossh'
/usr/bin/autossh -V -i /home/xzhang1/.ssh/id_rsa -fNR */:8070:localhost:22 ec2-user@52.205.255.228
echo $?
echo 'afer running autossh, hopefully some verbose'
exit 0
