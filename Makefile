
obj-m += usb_test_drv.o

KERNEL_SOURCE := /lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)

default:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install: 
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) module_install

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean









