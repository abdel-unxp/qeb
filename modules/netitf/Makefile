KDIR := ../../kernel

obj-m := netitf.o
netitf-objs := netitf_main.o
ccflags-y += -g

all:
	make -C ${KDIR}  M=$(PWD) modules

clean:
	make -C ${KDIR} M=$(PWD) clean
