KDIR := ../../kernel

obj-m := test.o
test-objs := test_main.o
ccflags-y += -g

all:
	make -C ${KDIR}  M=$(PWD) modules

clean:
	make -C ${KDIR} M=$(PWD) clean
