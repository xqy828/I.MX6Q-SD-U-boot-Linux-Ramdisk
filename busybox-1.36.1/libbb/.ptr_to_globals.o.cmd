cmd_libbb/ptr_to_globals.o := arm-none-linux-gnueabihf-gcc -Wp,-MD,libbb/.ptr_to_globals.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DBB_VER='"1.36.1"' -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0 -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Oz    -DKBUILD_BASENAME='"ptr_to_globals"'  -DKBUILD_MODNAME='"ptr_to_globals"' -c -o libbb/ptr_to_globals.o libbb/ptr_to_globals.c

deps_libbb/ptr_to_globals.o := \
  libbb/ptr_to_globals.c \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdc-predef.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/features.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/features-time64.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/wordsize.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/timesize.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/cdefs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/long-double.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/gnu/stubs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/gnu/stubs-hard.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/errno-base.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/error_t.h \

libbb/ptr_to_globals.o: $(deps_libbb/ptr_to_globals.o)

$(deps_libbb/ptr_to_globals.o):
