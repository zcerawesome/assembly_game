%include "main.inc"

struc Point
    .x: resb 1
    .y: resd 1
endstruc

section .data
    msg db "Hello World!", 10, 0
    sixteen_bit_address db "0123456789abcdef"
    float1 dd 3.14159
    constant db 1000000.0
    myPoint:
        db 48
        dd 10

section .text
    global _start1
    extern add_numbers
    extern main

_start1:
    lea rax, [rel msg]
    printf "s", rax
    lea rax, 1234
    printf "d", rax
    print 10
    lea r10, [rel msg]
    printf "p", r10
    ; print 10
    ; mov rax, 10
    ; printf "d", rax
    ; lea rax, [rel msg]
    ; printWord rax
    exit 0
    movss xmm0, [rel float1]

    cvttss2si rax, xmm0
    printf "d", rax
    push 1000000

    exit 0
