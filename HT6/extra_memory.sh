pvcreate /dev/sdc /dev/sdd /dev/sde /dev/sdf

vgcreate vg00 /dev/sdc /dev/sdd /dev/sde /dev/sdf
  
lvcreate -l 100%FREE vg00 /dev/sdc /dev/sdd -n lv1
lvcreate -l 100%FREE vg00 /dev/sde /dev/sdf -n lv2

mkfs.ext4 /dev/vg00/lv1  
mkfs.ext4 /dev/vg00/lv2

mkdir /mnt/vol1 /mnt/vol2
    
echo '/dev/vg00/lv1 /mnt/vol1 ext4 defaults 0 0' >>/etc/fstab
echo '/dev/vg00/lv2 /mnt/vol2 ext4 defaults 0 0' >>/etc/fstab

mount -a