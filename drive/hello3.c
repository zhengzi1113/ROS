#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#define DRIVER_AUTHOR "Teacher Li"
#define DRIVER_DESC "A sample driver"
static int init_hello3(void)
{
printk(KERN_ALERT"Hello! This is a testing module3!\n");
return 0;
}
static void cleanup_hello3(void)
{
printk(KERN_ALERT"Sorry! The testing module3 is unloading now!\n");
}
module_init(init_hello3);
module_exit(cleanup_hello3);
MODULE_LICENSE("GPL" );
MODULE_AUTHOR(DRIVER_AUTHOR );
MODULE_DESCRIPTION(DRIVER_DESC );
//MODULE_SUPPORTED_DEVICE("testdevice" );
