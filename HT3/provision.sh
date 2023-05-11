#!/bin/bash

sudo cp /vagrant/sysinfo.sh /root/
chmod +x /root/sysinfo.sh
echo "* * * * 1-5 root /root/sysinfo.sh >> /var/log/sysinfo.log" > /etc/cron.d/mycron