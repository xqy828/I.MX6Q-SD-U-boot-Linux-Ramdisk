/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2016-2017 Socionext Inc.
 */
#ifndef __CONFIG_H
#define __CONFIG_H

/* Timers for fasp(TIMCLK) */
#define CFG_SYS_TIMERBASE		0x31080000	/* AP Timer 1 (ARM-SP804) */

/*
 * SDRAM (for initialize)
 */
#define CFG_SYS_SDRAM_BASE		(0x80000000)	/* Start address of DDR3 */
#define PHYS_SDRAM_SIZE			(0x7c000000)	/* Default size (2GB - Secure memory) */

#define CFG_MAX_MEM_MAPPED		PHYS_SDRAM_SIZE

#define SQ_DRAMINFO_BASE		(0x2e00ffc0)	/* DRAM info from TF-A */

/*
 * Boot info
 */

/*
 * Hardware drivers support
 */

/* RTC */
#define CFG_SYS_I2C_RTC_ADDR		0x51

/* Serial (pl011)       */
#define UART_CLK			(62500000)
#define CFG_PL011_CLOCK		UART_CLK
#define CFG_PL01x_PORTS		{(void *)(0x2a400000)}

/* Support MTD */
#define CFG_SYS_FLASH_BASE		(0x08000000)
#define CFG_SYS_FLASH_BANKS_LIST	{CFG_SYS_FLASH_BASE}

/* Since U-Boot 64bit PCIe support is limited, disable 64bit MMIO support */

#ifdef CONFIG_FWU_MULTI_BANK_UPDATE
#define DEFAULT_DFU_ALT_INFO
#else
#define DEFAULT_DFU_ALT_INFO "dfu_alt_info="				\
			"mtd nor1=u-boot.bin raw 200000 100000;"	\
			"fip.bin raw 180000 78000;"			\
			"optee.bin raw 500000 100000\0"
#endif

/* GUIDs for capsule updatable firmware images */
#define DEVELOPERBOX_UBOOT_IMAGE_GUID \
	EFI_GUID(0x53a92e83, 0x4ef4, 0x473a, 0x8b, 0x0d, \
		 0xb5, 0xd8, 0xc7, 0xb2, 0xd6, 0x00)

#ifdef CONFIG_FWU_MULTI_BANK_UPDATE
#define DEVELOPERBOX_FIP_IMAGE_GUID \
	EFI_GUID(0x7d6dc310, 0x52ca, 0x43b8, 0xb7, 0xb9, \
		 0xf9, 0xd6, 0xc5, 0x01, 0xd1, 0x08)
#else
#define DEVELOPERBOX_FIP_IMAGE_GUID \
	EFI_GUID(0x880866e9, 0x84ba, 0x4793, 0xa9, 0x08, \
		 0x33, 0xe0, 0xb9, 0x16, 0xf3, 0x98)
#endif

#define DEVELOPERBOX_OPTEE_IMAGE_GUID \
	EFI_GUID(0xc1b629f1, 0xce0e, 0x4894, 0x82, 0xbf, \
		 0xf0, 0xa3, 0x83, 0x87, 0xe6, 0x30)

/* Distro boot settings */
#ifdef CONFIG_CMD_USB
#define BOOT_TARGET_DEVICE_USB(func)	func(USB, usb, 0)
#else
#define BOOT_TARGET_DEVICE_USB(func)
#endif

#ifdef CONFIG_CMD_MMC
#define BOOT_TARGET_DEVICE_MMC(func)	func(MMC, mmc, 0)
#else
#define BOOT_TARGET_DEVICE_MMC(func)
#endif

#ifdef CONFIG_CMD_NVME
#define BOOT_TARGET_DEVICE_NVME(func)	func(NVME, nvme, 0)
#else
#define BOOT_TARGET_DEVICE_NVME(func)
#endif

#ifdef CONFIG_CMD_SCSI
#define BOOT_TARGET_DEVICE_SCSI(func)	func(SCSI, scsi, 0) func(SCSI, scsi, 1)
#else
#define BOOT_TARGET_DEVICE_SCSI(func)
#endif

#define BOOT_TARGET_DEVICES(func)	\
	BOOT_TARGET_DEVICE_USB(func)	\
	BOOT_TARGET_DEVICE_MMC(func)	\
	BOOT_TARGET_DEVICE_SCSI(func)	\
	BOOT_TARGET_DEVICE_NVME(func)	\

#include <config_distro_bootcmd.h>

#define	CFG_EXTRA_ENV_SETTINGS		\
	"fdt_addr_r=0x9fe00000\0"		\
	"kernel_addr_r=0x90000000\0"		\
	"ramdisk_addr_r=0xa0000000\0"		\
	"scriptaddr=0x88000000\0"		\
	"pxefile_addr_r=0x88100000\0"		\
	DEFAULT_DFU_ALT_INFO			\
	BOOTENV

#endif /* __CONFIG_H */
