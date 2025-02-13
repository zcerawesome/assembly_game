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
    ten_milly dd 1000000
    PI dd 3.14159
    Exit_Msg db "Exiting now", 0xa, 0

section .data
    gravity dd 0.0
    jump_vel equ 7
    gravity_const dd 0.038
    key_jump_table:
        dq _Special_key_section1, _Special_key_section2, _Special_key_section3, _Special_key_section4
    release_jump_table:
        dq _Special_release_section1, _Special_release_section2, _Special_release_section3, _Special_release_section4

    Player_direction dd 0

    global Player_Pos
    player_inst_vel:
        dw 0
        dw 0
    PLAYER_WIDTH equ 8
    PLAYER_HEIGHT equ 8

    Entities_count dd 2
    Player_Pos:
        dd 150
        dd 540
        dd PLAYER_WIDTH
        dd PLAYER_HEIGHT
    Block:
        dd 960
        dd 52
        dd 960
        dd 52
    Block1:
        dd 118
        dd 268
        dd 24
        dd 12
    Block2:
        dd 164
        dd 278
        dd 24
        dd 12
    lastPoint db 1


    Player_Velocity_Bool dd 0

section .text
    global sin_a
    global cos_a
    global keyboard
    global display

    global lastPoint
    global Entities_count

    global handleSpecialKeypress
    global handleSpecialKeyRelease 
    global getOne
    glImports   

display:
    saverbp
    mov rdi, 0x00004000
    call [rel glClear wrt ..got]
    mov rax, 1
    cvtsi2ss xmm0, rax
    mov rax, 0
    cvtsi2ss xmm1, rax
    movss xmm2, xmm1
    call [rel glColor3f wrt ..got]
    mov rdi, 7
    call [rel glBegin wrt ..got]

    xor r10d, r10d ; Horizantle
    xor r9d, r9d ; Verticle

    lea rdx, [rel Player_Velocity] ;Put the Velocity which is either 0 or 4

    lea rax, [rel Player_Velocity_Bool] ; Gets if the first key is pressed, and then makes it go left
    movzx rax, byte [rax]
    add rdx, rax
    sub r10b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Velocity_Bool + 1] ; Gets if the up key is pressed, and then makes it go up
    movzx rax, byte [rax]
    add rdx, rax

    cmp rax, 1
    je _normal_y_gravity
    jmp _skip_jumping
_normal_y_gravity:
    add r9d, jump_vel
    lea rdi, [rel Player_Pos + Point.y]
    dec dword [rdi]
    call check_object_interference
    lea rdi, [rel Player_Pos + Point.y]
    inc dword [rdi]
    cmp rax, 0
    je _subtract_normally_verticle_velocity
    jmp _skip_jumping
_subtract_normally_verticle_velocity:
    mov r9b, 0
_skip_jumping:
    lea rdx, [rel Player_Velocity] ;Put the Velocity which is either 0 or 4

    lea rax, [rel Player_Velocity_Bool + 2] ; Gets if the right key is pressed, and then makes it go Righ
    movzx rax, byte [rax]
    add rdx, rax
    add r10b, byte [rdx]
    sub rdx, rax

    lea rax, [rel Player_Velocity_Bool + 3] ; Gets if the down key is pressed, and then makes it go down
    movzx rax, byte [rax]
    add rdx, rax
    sub r9b, byte [rdx]
    sub rdx, rax

    lea rax, [rel player_inst_vel] ; Updates the x and y position each frame which is 144 frames per second
    movsx r10w, r10b
    add [rax], r10w

    
    lea rax, [rel player_inst_vel + 2]
    movss xmm0, [rel gravity]
    cvttss2si edi, xmm0
    movsx r9w, r9b
    sub r9d, edi
    add [rax], r9w

    movsx r9w, [rel player_inst_vel + 2]
    mov r8w, 1 ; incrementer
    cmp r9w, 0
    jge _finished_first_y_check 
    mov r8w, -1
_finished_first_y_check:
    movsx r12d, r8w
_check_y_interference:
    cmp r9w, 0
    je _done_checking_y_interference
    add dword [rel Player_Pos + Point.y], r12d
    ;use different registers, function call uses other registers
    call check_object_interference
    cmp rax, 1
    je _failed_y_check
    sub r9w, r8w
    jmp _check_y_interference
_failed_y_check:
    sub dword [rel Player_Pos + Point.y], r12d
    ; lea rax, [rel gravity]
    lea rax, [rel player_inst_vel + 2]
    mov word [rax], 0
_done_checking_y_interference:


    movsx r9w, [rel player_inst_vel]
    mov r8w, 1 ; incrementer
    cmp r9w, 0
    jge _finished_first_x_check 
    mov r8w, -1
_finished_first_x_check:
    movsx r12d, r8w
_check_x_interference:
    cmp r9w, 0
    je _done_checking_x_interference
    add dword [rel Player_Pos + Point.x], r12d
    ;use different registers, function call uses other registers
    call check_object_interference
    cmp rax, 1
    je _failed_x_check
    sub r9w, r8w
    jmp _check_x_interference
_failed_x_check:
    sub dword [rel Player_Pos + Point.x], r12d
    lea rax, [rel player_inst_vel]
    mov word [rax], 0
_done_checking_x_interference:


    lea rax, [rel player_inst_vel] ; Sets velocity to 0 to update
    mov word [rax], 0

    lea rdi, [rel Player_Pos]
    call check_out_of_bounds


    lea rdi, [rel Player_Pos]   
    call Build_That_Square 
    
    call [rel glEnd wrt ..got]

    mov rdi, 255 ; Divider
    cvtsi2ss xmm3, rdi
    mov rax, 108
    cvtsi2ss xmm0, rax
    divss xmm0, xmm3
    mov rax, 32
    cvtsi2ss xmm1, rax
    divss xmm1, xmm3
    mov rax, 196
    cvtsi2ss xmm2, rax
    divss xmm2, xmm3
    call [rel glColor3f wrt ..got]
    mov rdi, 7
    call [rel glBegin wrt ..got]

    lea rdi, [rel Block]   
    call Build_That_Square 
    lea rdi, [rel Block1]   
    call Build_That_Square 
    lea rdi, [rel Block2]   
    call Build_That_Square 

    call [rel glEnd wrt ..got]

    call [rel glFlush wrt ..got]

    lea rax, [rel global_degree]
    add dword [rax], 1

    lea rax, [rel Player_Pos + Point.y]
    dec dword [rax]
    call check_object_interference
    lea rdi, [rel Player_Pos + Point.y]
    inc dword [rdi]
    cmp rax, 1
    je _reset_gravity
    movss xmm0, [rel gravity]
    movss xmm1, [rel gravity_const]
    addss xmm0, xmm1
    movss [rel gravity], xmm0
    jmp _done_display_method
_reset_gravity:
    mov rax, 0
    cvtsi2ss xmm0, rax
    movss [rel gravity], xmm0
    jmp _done_display_method
_done_display_method:
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

add r9b, 4

keyboard:

    cmp rdi, 27
    jne _keyboard_section_1
    lea rdi, [rel Exit_Msg]
    mov rsi, "s"
    call printff
    exit 0
_keyboard_section_1:
    mov r10, rdx
    mov rdi, rsi
    mov rsi, "d"
    call printff
    print ","
    mov rdi, r10
    neg rdi
    add rdi, 985
    mov rsi, "d"
    call printlnf
    ret
_keyboard_section_2:
_keyboard_section_3:
_keyboard_section_4:
    ret