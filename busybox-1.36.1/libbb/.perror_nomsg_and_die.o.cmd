cmd_libbb/perror_nomsg_and_die.o := arm-none-linux-gnueabihf-gcc -Wp,-MD,libbb/.perror_nomsg_and_die.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DBB_VER='"1.36.1"' -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0 -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Oz    -DKBUILD_BASENAME='"perror_nomsg_and_die"'  -DKBUILD_MODNAME='"perror_nomsg_and_die"' -c -o libbb/perror_nomsg_and_die.o libbb/perror_nomsg_and_die.c

deps_libbb/perror_nomsg_and_die.o := \
  libbb/perror_nomsg_and_die.c \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdc-predef.h \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include-fixed/limits.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include-fixed/syslimits.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/limits.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/libc-header-start.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/features.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/features-time64.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/wordsize.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/timesize.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/cdefs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/long-double.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/gnu/stubs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/gnu/stubs-hard.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/posix1_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/local_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/limits.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/pthread_stack_min-dynamic.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/posix2_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/xopen_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/uio_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/byteswap.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/byteswap.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/typesizes.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/time64.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/endian.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/endian.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/endianness.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/uintn-identity.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include/stdint.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdint.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/wchar.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/stdint-intn.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/stdint-uintn.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include/stdbool.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/unistd.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/posix_opt.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/environments.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include/stddef.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/confname.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/getopt_posix.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/getopt_core.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/unistd_ext.h \

libbb/perror_nomsg_and_die.o: $(deps_libbb/perror_nomsg_and_die.o)

$(deps_libbb/perror_nomsg_and_die.o):
