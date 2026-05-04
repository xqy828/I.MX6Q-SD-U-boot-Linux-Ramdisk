TOOL=/opt/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-linux-gnueabihf/bin
CC=$(TOOL)/arm-none-linux-gnueabihf-gcc

CFLAGS := -march=armv7-a -Wall -c -g -O0

all: imx_early_uart.o

imx_early_uart.o:imx6q_early_uart.S 
	$(CC) $(CFLAGS) $< -o $@


clean:
	rm *.o
