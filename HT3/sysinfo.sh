#!/bin/bash
#purpose: get system information

echo -e "\n-------------------------------------------------"
echo -e "\n> Current system date and time:"
date
echo -e "\n> Current user:"
whoami
echo -e "\n> System uptime, logged-in users and CPU load:"
w
echo -e "\n> Memory usage:"
free -m
echo -e "\n> Disk space usage:"
df -h
echo -e "\n> List of programs used open TCP ports:"
ss -tulpn | grep '^tcp'
echo -e "\n> Connection to ukr.net host:"
ping -c 2 ukr.net
echo -e "\n> List of SUID programs in local system"
sudo find / -perm -4000
