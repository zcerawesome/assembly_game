%include "main.inc"
%include "sin_values.inc"
%include "gl_imports.inc"

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

    global Player_Height
    global Player_Width
    Player_Height dd 8
    Player_Width dd 8
    
    One_point dd 1.0
    neg_one dd -1.0
    Zero_point dd 0.0
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
    global display
    global handleSpecialKeypress

    glImports   

display:
    saverbp
    mov rdi, 0x00004000
    call [rel glClear wrt ..got]
    movss xmm0, [rel One_point]
    movss xmm1, [rel Zero_point]
    movss xmm2, [rel Zero_point]
    call [rel glColor3f wrt ..got]
    mov rdi, 7
    call [rel glBegin wrt ..got]


    ; mov rdi, [rel global_degree]
    ; call sin_a
    ; movq rax, xmm0
    ; neg rax
    ; movq xmm1, rax
    mov rdi, [rel global_degree]
    call sin_a
    mulss xmm0, [rel neg_one]
    movss xmm1, xmm0
    mov rax, 0xBF400000 
    movq xmm0, rax
    call [rel glVertex2f wrt ..got]


    ; mov rdi, [rel global_degree]
    ; call sin_a
    ; movq rax, xmm0
    ; neg rax
    ; movq xmm1, rax

    mov rdi, [rel global_degree]
    call cos_a
    mulss xmm0, [rel neg_one]
    movq rax, xmm0
    buildVertex2f 0x3F400000, rax
    
    ; mov rdi, [rel global_degree]
    ; call sin_a
    ; movq rax, xmm0
    ; movq xmm1, rax
    mov rdi, [rel global_degree]
    call sin_a
    movss xmm1, xmm0
    mov rax, 0x3F000000
    movq xmm0, rax
    call [rel glVertex2f wrt ..got]


    ; mov rdi, [rel global_degree]
    ; call sin_a
    ; movq rax, xmm0
    ; movq xmm1, rax
    mov rdi, [rel global_degree]
    call sin_a
    movss xmm1, xmm0
    mov rax, 0xBF000000
    movq xmm0, rax
    call [rel glVertex2f wrt ..got]
    
    call [rel glEnd wrt ..got]
    call [rel glFlush wrt ..got]

    lea rax, [rel global_degree]
    add dword [rax], 1
    poprbp
    ret


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

handleSpecialKeypress:
    cmp rdi, 0x0065
    jne _Special_key_section1
    print "a" 
_Special_key_section1:
_Special_key_section2:
_Special_key_section3:
_Special_key_section4:
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