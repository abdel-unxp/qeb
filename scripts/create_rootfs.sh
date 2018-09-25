#!/bin/sh

sudo apt-get install qemu qemu-user qemu-user-static \
 binfmt-support debootstrap dosfstools

sudo  debootstrap --foreign \
  --no-check-gpg \
  --include=ca-certificates \
  --arch=amd64 jessie mnt/  http://deb.debian.org/debian/

sudo chroot mnt/  /debootstrap/debootstrap \
      --second-stage --verbose

sudo sh -c 'echo deb  http://deb.debian.org/debian/ stretch main > mnt/etc/apt/sources.list'
sudo sh -c 'echo nbt_poc > mnt/etc/hostname'
sudo sh -c 'echo -e 127.0.0.1\\nbt_poc >> mnt/etc/hosts'

sudo sh -c 'cat > mnt/etc/network/interfaces << EOF
auto lo
iface lo inet loopback
auto eth0
iface eth0 inet dhcp
auto wlan0
iface wlan0 inet manual
EOF
'
sudo cp /etc/resolv.conf mnt/etc
sudo bash -c 'cat > mnt//etc/fstab << EOF
proc /proc proc defaults 0 0
EOF
'

echo "****** ENTER ROOT PASSWORD ********"
sudo passwd --root /home/abdel/progs/mas2_poc/mnt

sudo umount ./mnt
