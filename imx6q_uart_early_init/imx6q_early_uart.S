
.arch armv7-a
.cpu cortex-a9

.text  
.align 2  
.global imx_early_uart1_init
.global imx_early_uart1_putc
.global imx_early_uart1_flush
.global imx_early_uart1_setbrg
.global imx_early_uart1_setclk
.global imx_early_uart1_setpin
.global imx_early_uart1_puts_early_msg
.global early_msg

/*********************************************************************************************//* 
Since the data segments such as .data and .rodata have not completed data relocation 
in the early stage of system boot, the defined string is placed in the .text section instead.
***********************************************************************************************/
#.section .data
early_msg:
    .asciz "Hello from i.MX6Q Early UART!\r\n"
#.previous

//Refer to arm-trusted-firmware/drivers/imx/uart/imx_crash_uart.S
//u-boot-2025.10/drivers/serial/serial_mxc.c

#define UART1_BASE_ADDR    0x02020000u
#define UART1_URXD_OFFSET    0x00u
#define UART1_UTXD_OFFSET    0x40u
#define UART1_UCR1_OFFSET    0x80u
#define UART1_UCR2_OFFSET    0x84u
#define UART1_UCR3_OFFSET    0x88u
#define UART1_UCR4_OFFSET    0x8cu
#define UART1_UFCR_OFFSET    0x90u
#define UART1_USR1_OFFSET    0x94u    
#define UART1_USR2_OFFSET    0x98u
#define UART1_UESC_OFFSET    0x9cu
#define UART1_UTIM_OFFSET    0xa0u
#define UART1_UBIR_OFFSET    0xa4u
#define UART1_UBMR_OFFSET    0xa8u
#define UART1_UBRC_OFFSET    0xacu
#define UART1_ONEMS_OFFSET    0xb0u
#define UART1_UTS_OFFSET    0xb4u
#define UART1_UMCR_OFFSET    0xb8u

#define CCM_CCR_BASE_ADDR    0x020C4000u
#define CCM_CCGR5_OFFSET     0x7Cu
#define CCM_CSCDR1_OFFSET    0x24u

#define IOMUXC_BASE_ADDR    0x020E0000u
#define IOMUXC_SW_MUX_CTL_PAD_SD3_DATA7_OFFSET    0x02A8u //uart_tx
#define IOMUXC_SW_MUX_CTL_PAD_SD3_DATA6_OFFSET     0x02ACu //uart rx
#define IOMUXC_SW_PAD_CTL_PAD_SD3_DATA7_OFFSET     0x0690u
#define IOMUXC_SW_PAD_CTL_PAD_SD3_DATA6_OFFSET     0x0694u

#define PLL3_OUT 480000000u
#define STATIC_DIV 6u
#define URAT_CLK_ROOT_PRE_CLK (PLL3_OUT/STATIC_DIV)
#define UART_BAUDRATE 115200u

.func imx_early_uart1_setpin
imx_early_uart1_setpin:
    push {r4,r5,r6,r7, lr}
// IOMUXC
    mov r6,#0x1    //SION disable, MUX_MODE ALT1
    ldr r7,=0x1b0b1
    ldr r4,=IOMUXC_BASE_ADDR
// uart tx
    str r6,[r4,#IOMUXC_SW_MUX_CTL_PAD_SD3_DATA7_OFFSET]
    str r7,[r4,#IOMUXC_SW_PAD_CTL_PAD_SD3_DATA7_OFFSET]
// uart rx
    str r6,[r4,#IOMUXC_SW_MUX_CTL_PAD_SD3_DATA6_OFFSET]
    str r7,[r4,#IOMUXC_SW_PAD_CTL_PAD_SD3_DATA6_OFFSET]
    pop {r4,r5,r6,r7, pc}
.endfunc

.func imx_early_uart1_setclk
imx_early_uart1_setclk:
    push {r4,r5,r6,lr}
    ldr r4,=CCM_CCR_BASE_ADDR
    ldr r5,[r4, #CCM_CSCDR1_OFFSET]
    bic r5, r5, #0x3F // set divider for uart clock podf is 1
    str r5, [r4, #CCM_CSCDR1_OFFSET]
//    enable uart clk 
    ldr r5,[r4, #CCM_CCGR5_OFFSET]
    mov r6, #(0xf000000) //(0x3 << 24)|(0x3 << 26)
    orr r5, r5, r6
    str r5, [r4, #CCM_CCGR5_OFFSET]
    pop {r4,r5,r6, pc}
.endfunc

.func imx_early_uart1_init
imx_early_uart1_init:
    push {r4,r5,r6,r7,r8,r9, lr}
    bl imx_early_uart1_flush
    bl imx_early_uart1_setpin
    bl imx_early_uart1_setclk
    ldr r4,=UART1_BASE_ADDR

    mov r6,#0
    ldr r7,=0x784
    mov r8,#0x8000
    mov r9,#0x2b

    str r6, [r4, #UART1_UCR1_OFFSET]
    str r6, [r4, #UART1_UCR2_OFFSET]
1: // reset
    ldr r5, [r4, #UART1_UCR2_OFFSET]
    tst r5, #(1 << 0)
    beq 1b
    str r7, [r4, #UART1_UCR3_OFFSET]
    str r8, [r4, #UART1_UCR4_OFFSET]
    str r9, [r4, #UART1_UESC_OFFSET]
    str r6, [r4, #UART1_UTIM_OFFSET]
    str r6, [r4, #UART1_UTS_OFFSET]
    pop {r4,r5,r6,r7,r8,r9, pc}
.endfunc 

.func imx_early_uart1_putc
imx_early_uart1_putc:
    push {r4,r5, lr}
    ldr r4,=UART1_BASE_ADDR
1:
    ldr r5, [r4, #UART1_UTS_OFFSET]
    tst r5,#(0x1 << 4)
    bne 1b
    strb r0, [r4, #UART1_UTXD_OFFSET]
    pop {r4,r5, pc}
.endfunc 

.func imx_early_uart1_puts_early_msg
imx_early_uart1_puts_early_msg:
    push {r4,r5,r6,r7, lr}
    ldr r4,=UART1_BASE_ADDR
    //ldr r6, =early_msg 
    adr r6, early_msg 
1:
    ldrb r7, [r6], #1
    cmp r7, #0
    beq 3f
2:
    ldr r5, [r4, #UART1_UTS_OFFSET]
    tst r5,#(0x1 << 4)
    bne 2b
    strb r7, [r4, #UART1_UTXD_OFFSET]
    b 1b
3:    
    pop {r4,r5,r6,r7, pc}
.endfunc 

.func imx_early_uart1_flush
imx_early_uart1_flush:
    push {r4,r5,r6, lr}
    mov r6,#4000 // time out
    ldr r4,=UART1_BASE_ADDR
    ldr r5,[r4,#UART1_UCR1_OFFSET]
    tst r5, #(0x1 << 0)
    beq 2f
    ldr r5, [r4, #UART1_UCR2_OFFSET]
    tst r5, #(0x1 << 2)
    beq 2f
1:
    ldr r5, [r4, #UART1_USR2_OFFSET]
    tst r5, #(0x1 << 3)
    bne 2f
    subs r6, r6, #1
    beq 2f // time out 
    b 1b
2:
    pop {r4,r5,r6, pc}
.endfunc 

.func imx_early_uart1_setbrg
imx_early_uart1_setbrg:
    push {r4,r5,r6,r7,r8,r9, lr}
    ldr r4,=UART1_BASE_ADDR
    ldr r5,=0xa01
    mov r6,#0xf
    mov r7,#0x1
    ldr r8,=0x4027
    ldr r9,=347 @ 80000000/(2*115200)=347

    str r5, [r4, #UART1_UFCR_OFFSET]
    str r6, [r4, #UART1_UBIR_OFFSET]
    dmb sy
    str r9, [r4, #UART1_UBMR_OFFSET]
    str r8, [r4, #UART1_UCR2_OFFSET]

    ldr r5, [r4,#UART1_UCR3_OFFSET]
    orr r5,r5,#(0x1 << 2)
    str r5, [r4, #UART1_UCR3_OFFSET]
    str r7, [r4, #UART1_UCR1_OFFSET]
    pop {r4,r5,r6,r7,r8,r9, pc}
.endfunc

.end 
