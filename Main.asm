%include "main.inc"
%include "sin_values.inc"
%include "gl_imports.inc"

struc Point
    .x: resd 1
    .y: resd 1
    .Width: resd 1
    .Height: resd 1
endstruc


section .rodata
    Player_Velocity:
        db 0, 4
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
    key_jump_table:
        dq _Special_key_section1, _Special_key_section2, _Special_key_section3, _Special_key_section4
    release_jump_table:
        dq _Special_release_section1, _Special_release_section2, _Special_release_section3, _Special_release_section4

    Player_direction dd 0

    global Player_Pos
    ; global Player_Velocity
    Player_Pos:
        dd 960
        dd 540
        dd 8
        dd 8
    
    Player_Velocity_Bool dd 0

section .bss
    float_value resd 1

section .text
    global sin_a
    global cos_a
    global keyboard
    global display
    global handleSpecialKeypress
    global handleSpecialKeyRelease 

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

    ; mov rdi, 0
    ; sub rdi, 4
    ; mov rsi, "d"
    ; call printlnf
    ; exit 0

    xor r10d, r10d ; Horizantle
    xor r9d, r9d ; Verticle

    lea rdx, [rel Player_Velocity]

    lea rax, [rel Player_Velocity_Bool]
    movzx rax, byte [rax]
    add rdx, rax
    sub r10b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Velocity_Bool + 1]
    movzx rax, byte [rax]
    add rdx, rax
    add r9b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Velocity_Bool + 2]
    movzx rax, byte [rax]
    add rdx, rax
    add r10b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Velocity_Bool + 3]
    movzx rax, byte [rax]
    add rdx, rax
    sub r9b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Pos + Point.x]
    movsx r10d, r10b
    add [rax], r10d

    lea rax, [rel Player_Pos + Point.y]
    movsx r9d, r9b
    add [rax], r9d

    Build_That_Square Player_Pos
    
    call [rel glEnd wrt ..got]
    call [rel glFlush wrt ..got]

    lea rax, [rel global_degree]
    add dword [rax], 1
    poprbp
    ret

handleSpecialKeyRelease:
    sub rdi, 0x0064 ; Used for the arrow keys
    cmp rdi, 0
    jl _End
    cmp rdi, 3
    jg _End
    lea rax, [rel release_jump_table]
    jmp qword [rax + rdi * 8]
_Special_release_section1:
    lea rax, [rel Player_Velocity_Bool]
    mov byte [rax], 0
    jmp _End
_Special_release_section2:
    lea rax, [rel Player_Velocity_Bool + 1]
    mov byte [rax], 0
    jmp _End
_Special_release_section3:
    lea rax, [rel Player_Velocity_Bool + 2]
    mov byte [rax], 0
    jmp _End
_Special_release_section4:
    lea rax, [rel Player_Velocity_Bool + 3]
    mov byte [rax], 0
    jmp _End
    ret

handleSpecialKeypress:
    sub rdi, 0x0064 ; Used for the arrow keys
    cmp rdi, 0
    jl _End
    cmp rdi, 3
    jg _End
    lea rax, [rel key_jump_table]
    jmp qword [rax + rdi * 8]
_Special_key_section1: ; Left
    lea rax, [rel Player_Velocity_Bool]
    mov byte [rax], 1
    jmp _End
_Special_key_section2: ; Up
    lea rax, [rel Player_Velocity_Bool + 1]
    mov byte [rax], 1
    jmp _End
_Special_key_section3: ; Right
    lea rax, [rel Player_Velocity_Bool + 2]
    mov byte [rax], 1
    jmp _End
_Special_key_section4: ; Down
    lea rax, [rel Player_Velocity_Bool + 3]
    mov byte [rax], 1
    jmp _End
_End:
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