%include "main.inc"
%include "sin_values.inc"

struc Point
    .x: resd 1
    .y: resd 1
endstruc


section .rodata
    sixteen_bit_address db "0123456789abcdef"
    sin_list:
        sin_values_whole
    msg db "Hello World!", 10, 0
    float1 dd 300000.0
    ten_milly dd 1000000
    two dd 2.0
    PI dd 3.14159
    Exit_Msg db "Exiting now", 0xa, 0
    gravity dd 1
section .data
    global Player_Pos
    global Player_Velocity
    Player_Pos:
        dd 0
        dd 4
    Player_Velocity:
        dd 0
        dd 0

section .bss
    float_value resd 1

section .text
    global sin_a
    global cos_a
    global printff
    global printt
    global keyboard

testing:
    mov dword [rsp + 24], 5
    mov dword [rsp + 20], 4
    mov dword [rsp + 16], 3
    mov dword [rsp + 12], 2
    mov dword [rsp + 8], 1
    ret

printt:
    print rdi
    ret

keyboard:
    cmp rdi, 27
    jne _keyboard_section_1
    lea rdi, [rel Exit_Msg]
    mov rsi, "s"
    call printff
    exit 0
_keyboard_section_1:
    
_keyboard_section_2:
_keyboard_section_3:
_keyboard_section_4:
    ret