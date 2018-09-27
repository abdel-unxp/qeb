#include <linux/module.h>
#include <linux/kernel.h>

static int init_net(void)
{
	printk(KERN_INFO "test module loaded\n");
	return 0;
}

static void exit_net(void)
{
	printk(KERN_INFO "test \n");
}

module_init(init_net);
module_exit(exit_net);

MODULE_AUTHOR("Abdel Benamrouche");
MODULE_DESCRIPTION("Network interface module");
MODULE_LICENSE("GPL");
MODULE_VERSION("0.1");
