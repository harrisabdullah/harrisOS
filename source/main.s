.section .init
.globl _start
_start:
    // turn on OK light (GPIO 47)

    // enable GPIO 47
    ldr r0, =0x7E200000 // GPIOFSEL0
    mov r1, #1
    lsl r1, #21
    str r1, [r0, #16] // GPIOFSEL4

    // clear GPIO 47 (clear turns on the light for some reason)
    mov r1,#1
    lsl r1,#15
    str r1,[r0,#48] // GPIOCLR1