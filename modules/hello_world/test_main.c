#include <linux/module.h>
#include <linux/kernel.h>

static int init_test(void)
{
	printk(KERN_INFO "test module loaded\n");

	return 0;
}

static void exit_test(void)
{
	printk(KERN_INFO "test \n");
}

module_init(init_test);
module_exit(exit_test);


MODULE_AUTHOR("");
MODULE_DESCRIPTION("test module");
MODULE_LICENSE("GPL");
MODULE_VERSION("0.1");
