#!/bin/bash

# Create user 'adminuser'
sudo useradd adminuser
# Set password to 'adminuser'                        
echo adminuser | passwd adminuser --stdin
# Grant for 'adminuser' sudoer permission   
sudo usermod -aG wheel adminuser

# Create user 'poweruser'
sudo useradd poweruser
# Disable password for 'poweruser'
sudo passwd -d poweruser
# Grant for 'poweruser' permission for iptables command
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
# Give permision to read '/home/adminuser' for 'poweruser'
setfacl -m g:poweruser:rx /home/adminuser   

# Create softlink to file /etc/mtab in poweruser home directory
ln -s /etc/mtab /home/poweruser/link