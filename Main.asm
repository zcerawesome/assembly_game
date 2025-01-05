%include "main.inc"

struc Point
    .x: resb 1
    .y: resd 1
endstruc

section .rodata
    sixteen_bit_address db "0123456789abcdef"

section .data
    msg db "Hello World!", 10, 0
    float1 dd 3.14159
    ten_milly dd 1000000
    myPoint:
        db 48
        dd 10

section .bss
    float_value resd 1

section .text
    global _start1
    extern add_numbers
    extern main

_start1:
    movss xmm0, [rel float1]
    call print_Float
    exit 0
