cmd_util-linux/mountpoint.o := arm-none-linux-gnueabihf-gcc -Wp,-MD,util-linux/.mountpoint.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DBB_VER='"1.36.1"' -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0 -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Oz    -DKBUILD_BASENAME='"mountpoint"'  -DKBUILD_MODNAME='"mountpoint"' -c -o util-linux/mountpoint.o util-linux/mountpoint.c

deps_util-linux/mountpoint.o := \
  util-linux/mountpoint.c \
    $(wildcard include/config/mountpoint.h) \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdc-predef.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/extra/cflags.h) \
    $(wildcard include/config/variable/arch/pagesize.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/etc/services.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/float/duration.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/syslog/info.h) \
    $(wildcard include/config/warn/simple/msg.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/shell/ash.h) \
    $(wildcard include/config/shell/hush.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/sleep.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/test1.h) \
    $(wildcard include/config/test2.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/feature/setpriv/capabilities.h) \
    $(wildcard include/config/run/init.h) \
    $(wildcard include/config/feature/securetty.h) \
    $(wildcard include/config/pam.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/fancy/prompt.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/ctype.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/locale_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__locale_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/dirent.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/dirent.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/dirent_ext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/errno.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/errno-base.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/error_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/fcntl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/fcntl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/fcntl-linux.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_iovec.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/falloc.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_timespec.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/time_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/stat.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/struct_stat.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/inttypes.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/netdb.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/netinet/in.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/socket.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/socket.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/clock_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/clockid_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/timer_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/select.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/select.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/sigset_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__sigset_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_timeval.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/pthreadtypes.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/thread-shared-types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/pthreadtypes-arch.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/atomic_wide_counter.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/struct_mutex.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/struct_rwlock.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/socket_type.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sockaddr.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/socket.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/socket.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/sockios.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/sockios.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_osockaddr.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/in.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/rpc/netdb.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/sigevent_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__sigval_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/netdb.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/setjmp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/setjmp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct___jmp_buf_tag.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/signal.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/signum-generic.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/signum-arch.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/sig_atomic_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/siginfo_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/siginfo-arch.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/siginfo-consts.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/siginfo-consts-arch.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/sigval_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigevent-consts.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigaction.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigcontext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/sigcontext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/stack_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/ucontext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigstack.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigstksz.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/ss_flags.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_sigstack.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sigthread.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/signal_ext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/paths.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdio.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/12.3.1/include/stdarg.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__fpos_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__mbstate_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__fpos64_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/__FILE.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/FILE.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_FILE.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/cookie_io_functions_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/stdio_lim.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/floatn.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/floatn-common.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/stdlib.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/waitflags.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/waitstatus.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/alloca.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/stdlib-float.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/string.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/strings.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/libgen.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/poll.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/poll.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/poll.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/ioctl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/ioctls.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/ioctls.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/ioctls.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/ioctl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/ioctl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/ioctl.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/ioctl-types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/ttydefaults.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/mman.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/mman.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/mman-map-flags-generic.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/mman-linux.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/mman-shared.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/mman_ext.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/resource.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/resource.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_rusage.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/stat.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/statx.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/stat.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/int-ll64.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/bitsperlong.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/posix_types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/stddef.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/posix_types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/posix_types.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/statx-generic.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_statx_timestamp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_statx.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/time.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/sysmacros.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/sysmacros.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/wait.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/idtype_t.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/termios.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-struct.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-c_cc.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-c_iflag.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-c_oflag.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-baud.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-c_cflag.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-c_lflag.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-tcflow.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/termios-misc.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/time.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/time.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/timex.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_tm.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/types/struct_itimerspec.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/param.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/param.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/linux/param.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm/param.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/asm-generic/param.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/pwd.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/grp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/mntent.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/sys/statfs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/statfs.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/utmp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/utmp.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/utmpx.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/bits/utmpx.h \
  /opt/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \

util-linux/mountpoint.o: $(deps_util-linux/mountpoint.o)

$(deps_util-linux/mountpoint.o):
