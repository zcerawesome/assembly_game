%include "main.inc"
%include "sin_values.inc"

struc Point
    .x: resb 1
    .y: resd 1
endstruc

section .rodata
    sixteen_bit_address db "0123456789abcdef"
    sin_list:
        sin_values_whole
section .data
    msg db "Hello World!", 10, 0
    float1 dd 300000.0
    ten_milly dd 1000000
    two dd 2.0
    myPoint:
        db 48
        dd 10

section .bss
    float_value resd 1

section .text
    global add_numbers
    global mul_float_by_two
    global sin_a
    global cos_a

cos_a:
    add rdi, 90
    call sin_a
    ret

sin_a:
;Goal, index into the sin array to get the value for the cpp program to use
    xor rdx, rdx
    mov rax, rdi
    mov rdi, 360
    div rdi
    imul rax, rdx, 4
    lea rdi, [rel sin_list]
    add rax, rdi
    mov rax, [rax]
    push rax
    movss xmm0, [rsp]
    pop rax
    ret

mul_float_by_two:
    movss xmm1, dword [rel two]
    mulss xmm0, [rel two]
    ret

add_numbers:
    add rdi, rsi
    mov rax, rdi
    ret