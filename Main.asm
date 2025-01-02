%include "main.inc"

section .data
    msg db "Hello World!", 10, 0

section .text
    global _start

istruc ListNode:

_start:
    exit 0
