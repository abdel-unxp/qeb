#!/bin/sh

./scripts/mount_rootfs.sh

echo "install ssh server"
sudo chroot ./mnt /bin/bash -c "apt-get update"
sudo chroot ./mnt /bin/bash -c "apt-get upgrade"
sudo chroot ./mnt /bin/bash -c "apt-get install ssh vim iproute2"

sudo umount ./mnt
