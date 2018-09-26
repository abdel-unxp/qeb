#KERNEL_PATH=/lib/modules/$(shell uname -r)/build
#KDIR := ../kernel

obj-m := test.o
test-objs := test_main.o
ccflags-y += -g
test-objs += test.o

all:
	make -C ${KERNEL_PATH}  M=$(PWD) modules

clean:
	make -C ${KERNEL_PATH} M=$(PWD) clean
