qemu-system-x86_64 -hda ./hdd.img -kernel kernel/linux-4.4.157/arch/x86_64/boot/bzImage -boot c  -nographic -serial mon:stdio -append 'root=/dev/sda console=ttyS0' --enable-kvm
