#!/bin/sh

dd if=/dev/null of=hdd.img bs=1M seek=2048
mkfs.ext4 -F hdd.img
mkdir -p mnt

