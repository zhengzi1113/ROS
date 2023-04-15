obj-m+=hello3.o
KDIR=/usr/src/linux-headers-5.13.0-41-generic
PWD:=$(shell pwd)
default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
