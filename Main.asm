%include "main.inc"

struc Point
    .x: resb 1
    .y: resd 1
endstruc

section .data
    ; msg db "Hello World!", 10, 0
    sixteen_bit_address db "0123456789abcdef"
    format db "%p", 10, 0
    myPoint:
        db 48
        dd 10

section .text
    global _start1
    extern add_numbers
    extern main

_start1:
    ; call main
    ; mov rdi, 10
    ; call add_numbers
    ; mov rax, [rel myPoint + Point.x]
    ; print rax
    ; print 10
    ; printf "d", -12583
    lea rax, [rel sixteen_bit_address]
    printf "p", rax
    print 10
    printf "u", -1
    exit 0
