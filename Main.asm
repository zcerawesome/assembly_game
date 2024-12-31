section .data
    msg db "Hello World", 0xA, 0
    msglen equ $-msg

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msglen
    syscall

    mov rax, 60
    mov rdi, 1
    syscall