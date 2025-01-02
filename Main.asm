%include "main.inc"

section .data
    msg db "Hello World!", 10, 0

section .text
    global _start

_start:
    printf "s", msg
    printf "d", 123
    exit
