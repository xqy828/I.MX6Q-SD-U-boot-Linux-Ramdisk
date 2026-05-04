# test log 
```c
[root@imx6q ~]#
[root@imx6q ~]# reboot -f
[   35.880053] imx2-wdt 20bc000.watchdog: Device shutdown: Expect reboot!
[   35.886795] reboot: Restarting system
Hello from i.MX6Q Early UART!

U-Boot SPL 2023.10-rc2 (May 04 2026 - 17:13:33 +0800)
Trying to boot from MMC1
Hello from i.MX6Q Early UART!


U-Boot 2023.10-rc2 (May 04 2026 - 17:13:33 +0800)

CPU:   Freescale i.MX6Q rev1.3 996 MHz (running at 792 MHz)
CPU:   Extended Commercial temperature grade (-20C to 105C) at 30C
Reset cause: WDOG
Model: Freescale i.MX6 Quad SABRE Smart Device Board
DRAM:  2 GiB
Core:  93 devices, 23 uclasses, devicetree: separate
WDT:   Started watchdog@20bc000 with servicing every 1000ms (60s timeout)
MMC:   FSL_SDHC: 0, FSL_SDHC: 2
Loading Environment from MMC... OK
In:    serial
Out:   serial
Err:   serial
SEC0:  RNG instantiated
Net:   eth0: ethernet@2188000
Hit any key to stop autoboot:  0
user boot ...
MMC Device 2:
High Capacity: Yes
Capacity: 7.3 GiB
Block size: 512 bytes

--- Partitions ---
Num  Name            Type        Start       Bootable     Size
---  --------------  ----------  ----------  ----------  --------
1    u-boot_b        U-Boot      2048        No          2 MiB
2    env             U-Boot      6144        No          1 MiB
3    kernel_a        U-Boot      8192        No          32 MiB
4    rootfs_a        U-Boot      73728       No          128 MiB
5    devicetree_a    U-Boot      335872      No          1 MiB
6    kernel_b        U-Boot      337920      No          32 MiB
7    rootfs_b        U-Boot      403456      No          128 MiB
8    devicetree_b    U-Boot      665600      No          1 MiB
9    userdata        U-Boot      667648      No          3 GiB
Start loading image . . .
zImage.a load form emmc(2) sector:0x2000 to addr:0x12000000 size:33554432 bytes
ramdisk.image.a load form emmc(2) sector:0x12000 to addr:0x13000000 size:134217728 bytes
imx6q-custom.dtb.a load form emmc(2) sector:0x52000 to addr:0x18000000 size:1048576 bytes
Executing: bootz 0x12000000 0x13000000 0x18000000
Kernel image @ 0x12000000 [ 0x000000 - 0xa102a0 ]
## Loading init Ramdisk from Legacy Image at 13000000 ...
   Image Name:
   Image Type:   ARM Linux RAMDisk Image (gzip compressed)
   Data Size:    78506464 Bytes = 74.9 MiB
   Load Address: 00000000
   Entry Point:  00000000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 18000000
   Booting using the fdt blob at 0x18000000
Working FDT set to 18000000
   Using Device Tree in place at 18000000, end 1800c1c2
Working FDT set to 18000000

Starting kernel ...

Hello from i.MX6Q Early UART!
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 6.5.0 (linux@linux-VMware-Virtual-Platform) (arm-none-linux-gnueabihf-gcc (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009, GNU ld (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 2.41.0.20231009) #1 SMP Mon May  4 11:39:51 CST 2026
[    0.000000] CPU: ARMv7 Processor [412fc09a] revision 10 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] OF: fdt: Machine model: Freescale i.MX6 Quad Custom Board
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] cma: Reserved 64 MiB at 0x8c000000
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000010000000-0x000000003fffffff]
[    0.000000]   HighMem  [mem 0x0000000040000000-0x000000008fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000010000000-0x000000008fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000010000000-0x000000008fffffff]
[    0.000000] percpu: Embedded 18 pages/cpu s43412 r8192 d22124 u73728
[    0.000000] Kernel command line: console=ttymxc0,115200 ramdisk_size=0x10000000 earlyprintk root=/dev/ram0 rw rootwait rootfstype=ext4 init=/linuxrc
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 522752
[    0.000000] mem auto-init: stack:all(zero), heap alloc:off, heap free:off
[    0.000000] Memory: 1913136K/2097152K available (15360K kernel code, 2259K rwdata, 4408K rodata, 1024K init, 417K bss, 118480K reserved, 65536K cma-reserved, 1245184K highmem)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] ftrace: allocating 51912 entries in 153 pages
[    0.000000] ftrace: allocated 153 pages with 4 groups
[    0.000000] trace event string verifier disabled
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000]  Rude variant of Tasks RCU enabled.
[    0.000000]  Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] L2C-310 errata 752271 769419 enabled
[    0.000000] L2C-310 enabling early BRESP for Cortex-A9
[    0.000000] L2C-310 full line of zeros enabled for Cortex-A9
[    0.000000] L2C-310 ID prefetch enabled, offset 16 lines
[    0.000000] L2C-310 dynamic clock gating enabled, standby mode enabled
[    0.000000] L2C-310 cache controller enabled, 16 ways, 1024 kB
[    0.000000] L2C-310: CACHE_ID 0x410000c7, AUX_CTRL 0x76470001
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.000000] Switching to timer-based delay loop, resolution 333ns
[    0.000001] sched_clock: 32 bits at 3000kHz, resolution 333ns, wraps every 715827882841ns
[    0.000021] clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 637086815595 ns
[    0.001164] Console: colour dummy device 80x30
[    0.001211] Calibrating delay loop (skipped), value calculated using timer frequency.. 6.00 BogoMIPS (lpj=30000)
[    0.001230] CPU: Testing write buffer coherency: ok
[    0.001270] CPU0: Spectre v2: using BPIALL workaround
[    0.001282] pid_max: default: 32768 minimum: 301
[    0.001441] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.001469] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.002360] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.003536] RCU Tasks Rude: Setting shift to 2 and lim to 1 rcu_task_cb_adjust=1.
[    0.003682] RCU Tasks Trace: Setting shift to 2 and lim to 1 rcu_task_cb_adjust=1.
[    0.003866] Setting up static identity map for 0x10100000 - 0x10100078
[    0.004097] rcu: Hierarchical SRCU implementation.
[    0.004105] rcu:     Max phase no-delay instances is 1000.
[    0.005264] smp: Bringing up secondary CPUs ...
[    0.006347] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
[    0.006365] CPU1: Spectre v2: using BPIALL workaround
[    0.007584] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
[    0.007602] CPU2: Spectre v2: using BPIALL workaround
[    0.008763] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
[    0.008780] CPU3: Spectre v2: using BPIALL workaround
[    0.008918] smp: Brought up 1 node, 4 CPUs
[    0.008933] SMP: Total of 4 processors activated (24.00 BogoMIPS).
[    0.008946] CPU: All CPU(s) started in SVC mode.
[    0.009549] devtmpfs: initialized
[    0.017526] VFP support v0.3: implementor 41 architecture 3 part 30 variant 9 rev 4
[    0.017833] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.017860] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.021278] pinctrl core: initialized pinctrl subsystem
[    0.023276] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.032640] DMA: preallocated 256 KiB pool for atomic coherent allocations
[    0.033983] thermal_sys: Registered thermal governor 'step_wise'
[    0.034059] cpuidle: using governor menu
[    0.034202] CPU identified as i.MX6Q, silicon rev 1.5
[    0.043926] platform soc: Fixed dependency cycle(s) with /soc/bus@2000000/gpc@20dc000
[    0.057019] platform 20e0000.pinctrl: Fixed dependency cycle(s) with /soc/bus@2000000/pinctrl@20e0000/imx6qdl-sabresd/hoggrp
[    0.066028] No ATAGs?
[    0.066199] hw-breakpoint: found 5 (+1 reserved) breakpoint and 1 watchpoint registers.
[    0.066212] hw-breakpoint: maximum watchpoint size is 4 bytes.
[    0.067968] imx6q-pinctrl 20e0000.pinctrl: initialized IMX pinctrl driver
[    0.073572] kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
[    0.078282] gpio gpiochip0: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.080466] gpio gpiochip1: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.082495] gpio gpiochip2: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.084510] gpio gpiochip3: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.086563] gpio gpiochip4: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.088580] gpio gpiochip5: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.090654] gpio gpiochip6: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.096802] SCSI subsystem initialized
[    0.097359] usbcore: registered new interface driver usbfs
[    0.097407] usbcore: registered new interface driver hub
[    0.097469] usbcore: registered new device driver usb
[    0.097636] usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
[    0.097828] usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
[    0.099542] i2c i2c-0: IMX I2C adapter registered
[    0.100651] i2c i2c-1: IMX I2C adapter registered
[    0.101277] i2c i2c-2: IMX I2C adapter registered
[    0.101522] mc: Linux media interface: v0.10
[    0.101601] videodev: Linux video capture interface: v2.00
[    0.101750] pps_core: LinuxPPS API ver. 1 registered
[    0.101758] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.101783] PTP clock support registered
[    0.102868] Advanced Linux Sound Architecture Driver Initialized.
[    0.103869] Bluetooth: Core ver 2.22
[    0.103916] NET: Registered PF_BLUETOOTH protocol family
[    0.103925] Bluetooth: HCI device and connection manager initialized
[    0.103941] Bluetooth: HCI socket layer initialized
[    0.103952] Bluetooth: L2CAP socket layer initialized
[    0.103973] Bluetooth: SCO socket layer initialized
[    0.104577] vgaarb: loaded
[    1.254454] clocksource: Switched to clocksource mxc_timer1
[    1.408649] VFS: Disk quotas dquot_6.6.0
[    1.408734] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.421947] NET: Registered PF_INET protocol family
[    1.422462] IP idents hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    1.424615] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes, linear)
[    1.424660] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    1.424679] TCP established hash table entries: 8192 (order: 3, 32768 bytes, linear)
[    1.424770] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    1.425085] TCP: Hash tables configured (established 8192 bind 8192)
[    1.425328] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    1.425394] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    1.425619] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    1.426221] RPC: Registered named UNIX socket transport module.
[    1.426233] RPC: Registered udp transport module.
[    1.426241] RPC: Registered tcp transport module.
[    1.426247] RPC: Registered tcp-with-tls transport module.
[    1.426254] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.427868] PCI: CLS 0 bytes, default 64
[    1.428134] Trying to unpack rootfs image as initramfs...
[    1.428734] rootfs image is not initramfs (no cpio magic); looks like an initrd
[    1.428767] armv7-pmu pmu: hw perfevents: no interrupt-affinity property, guessing.
[    1.429103] hw perfevents: enabled with armv7_cortex_a9 PMU driver, 7 counters available
[    1.432773] Initialise system trusted keyrings
[    1.433182] workingset: timestamp_bits=30 max_order=19 bucket_order=0
[    1.434209] NFS: Registering the id_resolver key type
[    1.434266] Key type id_resolver registered
[    1.434275] Key type id_legacy registered
[    1.434312] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.434323] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    1.434371] jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
[    1.434965] fuse: init (API version 7.38)
[    1.574737] Key type asymmetric registered
[    1.574768] Asymmetric key parser 'x509' registered
[    1.574956] bounce: pool size: 64 pages
[    1.575009] io scheduler mq-deadline registered
[    1.575021] io scheduler kyber registered
[    1.575066] io scheduler bfq registered
[    1.594399] mxs-dma 110000.dma-controller: initialized
[    1.604801] pfuze100-regulator 1-0008: unrecognized pfuze chip ID!
[    1.609187] 2020000.serial: ttymxc0 at MMIO 0x2020000 (irq = 268, base_baud = 5000000) is a IMX
[    1.609275] printk: console [ttymxc0] enabled
[    2.013479] Freeing initrd memory: 76668K
[    2.027666] dwhdmi-imx 120000.hdmi: Detected HDMI TX controller v1.30a with HDCP (DWC HDMI 3D TX PHY)
[    2.594542] brd: module loaded
[    2.609513] loop: module loaded
[    2.615804] ahci-imx 2200000.sata: fsl,transmit-level-mV not specified, using 00000024
[    2.623751] ahci-imx 2200000.sata: fsl,transmit-boost-mdB not specified, using 00000480
[    2.631801] ahci-imx 2200000.sata: fsl,transmit-atten-16ths not specified, using 00002000
[    2.640006] ahci-imx 2200000.sata: fsl,receive-eq-mdB not specified, using 05000000
[    2.647770] ahci-imx 2200000.sata: supply ahci not found, using dummy regulator
[    2.655449] ahci-imx 2200000.sata: supply phy not found, using dummy regulator
[    2.662754] ahci-imx 2200000.sata: supply target not found, using dummy regulator
[    2.673758] ahci-imx 2200000.sata: SSS flag set, parallel bus scan disabled
[    2.680784] ahci-imx 2200000.sata: AHCI 0001.0300 32 slots 1 ports 3 Gbps 0x1 impl platform mode
[    2.689603] ahci-imx 2200000.sata: flags: ncq sntf stag pm led clo only pmp pio slum part ccc apst
[    2.701222] scsi host0: ahci-imx
[    2.705101] ata1: SATA max UDMA/133 mmio [mem 0x02200000-0x02203fff] port 0x100 irq 274
[    2.730849] CAN device driver interface
[    2.738553] usbcore: registered new device driver r8152-cfgselector
[    2.744933] usbcore: registered new interface driver r8152
[    2.750497] usbcore: registered new interface driver lan78xx
[    2.756247] usbcore: registered new interface driver asix
[    2.761707] usbcore: registered new interface driver ax88179_178a
[    2.767883] usbcore: registered new interface driver cdc_ether
[    2.773780] usbcore: registered new interface driver smsc95xx
[    2.779601] usbcore: registered new interface driver net1080
[    2.785351] usbcore: registered new interface driver cdc_subset
[    2.791329] usbcore: registered new interface driver zaurus
[    2.796986] usbcore: registered new interface driver MOSCHIP usb-ethernet driver
[    2.804486] usbcore: registered new interface driver cdc_ncm
[    2.810202] usbcore: registered new interface driver r8153_ecm
[    2.816169] usbcore: registered new interface driver usb-storage
[    2.826109] input: 20cc000.snvs:snvs-powerkey as /devices/platform/soc/2000000.bus/20cc000.snvs/20cc000.snvs:snvs-powerkey/input/input0
[    2.839158] SPI driver ads7846 has no spi_device_id for ti,tsc2046
[    2.845394] SPI driver ads7846 has no spi_device_id for ti,ads7843
[    2.851588] SPI driver ads7846 has no spi_device_id for ti,ads7845
[    2.857790] SPI driver ads7846 has no spi_device_id for ti,ads7873
[    2.869676] snvs_rtc 20cc000.snvs:snvs-rtc-lp: registered as rtc0
[    2.875892] snvs_rtc 20cc000.snvs:snvs-rtc-lp: setting system clock to 1970-01-01T00:03:35 UTC (215)
[    2.885324] i2c_dev: i2c /dev entries driver
[    2.896508] Bluetooth: HCI UART driver ver 2.3
[    2.900983] Bluetooth: HCI UART protocol H4 registered
[    2.906228] Bluetooth: HCI UART protocol LL registered
[    2.912938] sdhci: Secure Digital Host Controller Interface driver
[    2.919163] sdhci: Copyright(c) Pierre Ossman
[    2.923533] sdhci-pltfm: SDHCI platform and OF driver helper
[    2.931080] sdhci-esdhc-imx 2194000.mmc: Got CD GPIO
[    2.931433] caam 2100000.crypto: device ID = 0x0a16010000000000 (Era 4)
[    2.942729] caam 2100000.crypto: job rings = 2, qi = 0
[    2.952313] caam algorithms registered in /proc/crypto
[    2.957716] caam 2100000.crypto: registering rng-caam
[    2.963084] caam 2100000.crypto: rng crypto API alg registered prng-caam
[    2.971825] usbcore: registered new interface driver usbhid
[    2.977473] usbhid: USB HID core driver
[    2.977708] mmc1: SDHCI controller on 2194000.mmc [2194000.mmc] using ADMA
[    2.979585] mmc3: SDHCI controller on 219c000.mmc [219c000.mmc] using ADMA
[    2.992172] fsl-ssi-dai 202c000.ssi: No cache defaults, reading back from HW
[    3.005234] NET: Registered PF_INET6 protocol family
[    3.011445] Segment Routing with IPv6
[    3.015198] In-situ OAM (IOAM) with IPv6
[    3.019226] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    3.023648] random: crng init done
[    3.026058] NET: Registered PF_PACKET protocol family
[    3.033667] can: controller area network core
[    3.038121] NET: Registered PF_CAN protocol family
[    3.038796] ata1: SATA link down (SStatus 0 SControl 300)
[    3.042934] can: raw protocol
[    3.048428] ahci-imx 2200000.sata: no device found, disabling link.
[    3.051318] can: broadcast manager protocol
[    3.057604] ahci-imx 2200000.sata: pass ahci_imx..hotplug=1 to enable hotplug
[    3.061797] can: netlink gateway - max_hops=1
[    3.073455] Key type dns_resolver registered
[    3.078991] Registering SWP/SWPB emulation handler
[    3.122832] mmc3: switch to bus width 8 failed
[    3.129016] mmc3: new DDR MMC card at address 0001
[    3.129217] Loading compiled-in X.509 certificates
[    3.135144] mmcblk3: mmc3:0001 008G70 7.28 GiB
[    3.152265]  mmcblk3: p1 p2 p3 p4 p5 p6 p7 p8 p9
[    3.162733] mmcblk3boot0: mmc3:0001 008G70 4.00 MiB
[    3.171124] mmcblk3boot1: mmc3:0001 008G70 4.00 MiB
[    3.189701] pps pps0: new PPS source ptp0
[    3.193836] mmcblk3rpmb: mmc3:0001 008G70 4.00 MiB, chardev (243:0)
[    3.217211] fec 2188000.ethernet eth0: registered PHC device 0
[    3.226579] fsl-ssi-dai 202c000.ssi: No cache defaults, reading back from HW
[    3.247176] fsl-ssi-dai 202c000.ssi: No cache defaults, reading back from HW
[    3.266104] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    3.277570] Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    3.283359] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[    3.292032] cfg80211: failed to load regulatory.db
[    3.292174] clk: Disabling unused clocks
[    3.301251] ALSA device list:
[    3.304234]   No soundcards found.
[    3.308019] RAMDISK: gzip image found at block 0
[   10.262465] EXT4-fs (ram0): mounted filesystem 6087f910-a7b4-4ee9-bf57-cd1dbf8c6b11 r/w without journal. Quota mode: none.
[   10.273711] VFS: Mounted root (ext4 filesystem) on device 1:0.
[   10.281076] devtmpfs: mounted
[   10.296083] Freeing unused kernel image (initmem) memory: 1024K
[   10.303174] Run /linuxrc as init process
Starting rcS...
mount: mounting traces on /sys/kernel/tracing failed: No such device
mount emmc...
found userdata partition ...
[   10.534344] EXT4-fs (mmcblk3p9): recovery complete
[   10.539252] EXT4-fs (mmcblk3p9): mounted filesystem 14f5177a-ab05-4b04-84c1-a1659c8c966f r/w with ordered data mode. Quota mode: none.
Folder /lib/modules/6.5.0 created successfully.

imx6q login: [   13.277335] fsl-ssi-dai 202c000.ssi: No cache defaults, reading back from HW
[   13.286010] etnaviv-gpu 130000.gpu: deferred probe timeout, ignoring dependency
[   13.293338] etnaviv-gpu: probe of 130000.gpu failed with error -110
[   13.300216] etnaviv-gpu 134000.gpu: deferred probe timeout, ignoring dependency
[   13.307562] etnaviv-gpu: probe of 134000.gpu failed with error -110
[   13.314394] etnaviv-gpu 2204000.gpu: deferred probe timeout, ignoring dependency
[   13.321821] etnaviv-gpu: probe of 2204000.gpu failed with error -110
[   13.336074] platform 2184000.usb: deferred probe pending
[   13.341406] platform 2184200.usb: deferred probe pending
[   13.346754] platform 20c8000.anatop:tempmon: deferred probe pending
[   13.353033] platform 202c000.ssi: deferred probe pending
[   13.358367] platform imx6q-cpufreq: deferred probe pending
[   13.363865] platform imx-pgc-power-domain.1: deferred probe pending
[   13.370152] platform 2400000.ipu: deferred probe pending
[   13.375489] platform 2800000.ipu: deferred probe pending
[   13.380809] platform 20c8000.anatop:regulator-1p1: deferred probe pending
[   13.387622] platform 20c8000.anatop:regulator-2p5: deferred probe pending
[   13.394421] platform 20c8000.anatop:regulator-vddcore: deferred probe pending
[   13.401578] platform 20c8000.anatop:regulator-vddpu: deferred probe pending
[   13.408575] platform 20c8000.anatop:regulator-vddsoc: deferred probe pending
[   13.415647] platform regulator-usb-otg-vbus: deferred probe pending
[   13.421923] platform 2008000.spi: deferred probe pending
[   13.427260] platform regulator-usb-h1-vbus: deferred probe pending
[   13.433449] platform 200c000.spi: deferred probe pending

imx6q login:
imx6q login:
imx6q login:

```
