%macro exit 1
    mov rax, 60
    mov rdi, %1
    syscall
%endmacro

%macro buildVertex2f 2
    mov rdi, %1
    cvtsi2ss xmm0, rdi
    mov rsi, 960
    cvtsi2ss xmm1, rsi
    divss xmm0, xmm1
    mov rax, -1
    cvtsi2ss xmm1, rax
    addss xmm0, xmm1

    mov rdi, %2
    cvtsi2ss xmm1, rdi
    movq rdi, xmm0
    mov rsi, 540
    cvtsi2ss xmm0, rsi
    divss xmm1, xmm0
    cvtsi2ss xmm0, rax
    addss xmm1, xmm0
    movq xmm0, rdi
    call [rel glVertex2f wrt ..got]
%endmacro

%macro saverbp 0
    push rbp
    mov rbp, rsp
%endmacro

%macro poprbp 0
    mov rsp, rbp
    pop rbp
%endmacro


%macro print 1                       
    push %1                             ; prints a singular value (pushes to stack b/c pointer is necessary)
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 1
    syscall
    pop rax
%endmacro

%macro printWord 1
    push %1
    mov rax, %1
    sub rsp, 4          ; pushes 4 byte 0 to stack
    mov dword [rsp], 0  
%%_reading:
    cmp byte [rax], 0    ; checks if it is at null ptr, then end if done
    je %%_print
    inc rax
    inc dword [rsp]      ; Loops through rax, and increments the local variable
    jmp %%_reading
%%_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, [rsp + 4]
    mov edx, [rsp]      ; moves value to edx and offsets the 4 byte rsp
    add rsp, 12
    syscall
%endmacro

%macro saveTopFour 0
    push rax
    push rdi
    push rsi
    push rdx
%endmacro

%macro getTopFour 0
    pop rdx
    pop rsi
    pop rdi
    pop rax
%endmacro

;Registers used, rbx, rdi, rax, rdx
Build_That_Square:
    ;Builds each corner
    mov rbx, rdi
    mov eax, [rel rbx + Point.x]
    add eax, [rel rbx + Point.Width]
    mov edx, [rel rbx + Point.y]
    add edx, [rel rbx + Point.Height]
    buildVertex2f rax, rdx

    mov eax, [rel rbx + Point.x]
    sub eax, [rel rbx + Point.Width]
    mov edx, [rel rbx + Point.y]
    add edx, [rel rbx + Point.Height]
    buildVertex2f rax, rdx

    mov eax, [rel rbx + Point.x]
    sub eax, [rel rbx + Point.Width]
    mov edx, [rel rbx + Point.y]
    sub edx, [rel rbx + Point.Height]
    buildVertex2f rax, rdx

    mov eax, [rel rbx + Point.x]
    add eax, [rel rbx + Point.Width]
    mov edx, [rel rbx + Point.y]
    sub edx, [rel rbx + Point.Height]
    buildVertex2f rax, rdx
    ; pop rdi
ret

;registers used rsi, rax, rdx, rdi, 
check_object_interference:
    lea rsi, [rel Entities_count]
    mov esi, dword [rsi]
    shl esi, 4 ; Multiples esi by 16
    lea rax, [rel Player_Pos]
    add rsi, rax
    ;rsi holds current pointer to entity
_Loop_for_checking_interference:
    lea rdx, [rel Player_Pos]
    cmp rsi, rdx
    je _failed_collision_check
    xor rdx, rdx
    ; registers used for this, rbx for division, rdi for player value, rax for object 
    mov rdi, [rel Player_Pos + Point.x]
    sub rdi, PLAYER_WIDTH
    mov rax, [rsi + Point.Width]
    add rax, [rsi + Point.x]
    cmp rdi, rax
    jg _next_loop_collision_check 

    xor rdx, rdx
    mov rdi, [rel Player_Pos + Point.x]
    add rdi, PLAYER_WIDTH
    mov rax, [rsi + Point.Width]
    neg rax
    add rax, [rsi + Point.x]
    cmp rdi, rax
    jl _next_loop_collision_check

    xor rdx, rdx
    mov rdi, [rel Player_Pos + Point.y]
    add rdi, PLAYER_HEIGHT 
    mov rax, [rsi + Point.Height]
    neg rax
    add rax, [rsi + Point.y]
    cmp rdi, rax
    jg _next_loop_collision_check

    xor rdx, rdx
    mov rdi, [rel Player_Pos + Point.y]
    sub rdi, PLAYER_HEIGHT
    mov rax, [rsi + Point.Height]
    add rax, [rsi + Point.y]
    jl _next_loop_collision_check
    jmp _successful_collision_check
_next_loop_collision_check:
    sub rsi, 16
    jmp _Loop_for_checking_interference
_successful_collision_check:
    mov rax, 1
    ret
_failed_collision_check:
    mov rax, 0
    ret


; Registers used: rax, rdi, rsi, 
check_out_of_bounds:
    mov edx, 0
    jmp _looping_for_entity
_looping_for_entity:
    lea rax, [rdi + Point.x]
    mov rsi, 1920
    sub rsi, [rdi + Point.Width]
    cmp dword [rax], esi
    jl _Out_of_Bounds_X_Negative
_Out_of_Bounds_X_Positive:
    mov dword [rax], esi
    jmp _Out_of_Bounds_X_Fail
_Out_of_Bounds_X_Negative:
    mov rsi, 0
    add rsi, [rdi + Point.Width]
    cmp dword [rax], esi
    jg _Out_of_Bounds_X_Fail
    mov dword [rax], esi
_Out_of_Bounds_X_Fail:
    lea rax, [rdi + Point.y]
    mov rsi, 1080
    sub rsi, [rdi + Point.Height]
    cmp dword [rax], esi
    jl _Out_of_Bounds_Y_Negative
_Out_of_Bounds_Y_Positive:
    mov dword [rax], esi
    jmp _Out_of_Bounds_Y_Fail
_Out_of_Bounds_Y_Negative:
    mov rsi, 0
    add rsi, [rdi + Point.Height]
    cmp dword [rax], esi
    jg _Out_of_Bounds_Y_Fail
    mov dword [rax], esi
_Out_of_Bounds_Y_Fail:
    cmp edx, 0
    je _End
    dec edx
    add rdi, 24
    jmp _looping_for_entity

printlnf:
    call printff
    print 10
    ret

printff:
    saverbp
    mov rax, rdi
    mov rdi, rsi
    cmp rdi, "s" ;Print string
    je _print_word
    mov rsi, 0
    cmp rdi, "d" ; print signed value
    je _printNum
    cmp rdi, "u" ; print unsigned value
    je _printU
    cmp rdi, "p" ; print memory_address in base 16, regular way
    je _printAddy
    cmp rdi, "f"
    je _printing_float
_printing_float:
    cvttss2si rdi, xmm0
    mov rsi, "d"
    call printff 
    print "."
    roundss xmm1, xmm0, 1
    subss xmm0, xmm1
    mov rax, 1000000
    cvtsi2ss xmm1, rax

    mulss xmm0, xmm1
    movq rdi, xmm0
    mov rsi, "d"
    call printff
    jmp _end
_print_word:
    printWord rax  ; simply prints the pointer value
    ; jmp %%_printNum
    jmp _end

_printU:
    mov rsi, "+" ; if unsigned, allocate "-" to rsi to tell the code not to count the first bit as negative if it is 1
    jmp _printNum

_printNum:
    cmp rax, 0 ; if greater than 0 or unsigned, start regular printing
    jge _start_process
    cmp rsi, "+" 
    je _start_process
    mov rsi, "-" ; hold the rsi to push later
    neg rax      ; set the rax to "positive" to print properly
_start_process:
    dec rsp                         ; set null character at the beginning
    mov byte [rsp], 0
_diving:
    xor rdx, rdx                    ; Set rdx to 0 and divide by 10 with rdi
    mov rdi, 10
    div rdi
    add rdx, 48
    dec rsp
    mov byte [rsp], dl              ; add 48 for ascii and add to stack by a byte
    cmp rax, 0
    jne _diving
    cmp rsi, "-"                    ; Checks if it is negative (it is found if negative earlier)
    jne _start_printing_process
    ; cmp rsi, "+"
    ; jne _start_printing_process   ; Checks if it is unsigned
    dec rsp
    mov byte [rsp], "-"
_start_printing_process:
    lea rsi, [rsp]                  ; Loads rsp to rsi to print properly then ends
    printWord rsi
    jmp _end
    
_printAddy:
    mov rsi, 16                     ; Moves the count to rsi (mem addresses are 16 digits in hex)
    dec rsp
    mov byte [rsp], 0 ; holds the remainder value, rbp is pointing right underneath
_divide_loop:
    xor rdx, rdx                    ; Set rdx to 0 and divide by 10 with rdi
    mov rdi, 16
    div rdi

    mov byte [rbp-1], dl            ; Puts the dl value into the "local variable"
    lea rdx, [rel sixteen_bit_address] ; puts memory address of sixteen_bit_address to rdx then add by offset in rbp-1
    add dl, [rbp - 1]

    mov rdx, [rdx]                  ; moves the values its pointing to to itself

    dec rsp
    mov [rsp], dl                   ; "pushes" to the stack

    dec rsi
    test rsi, rsi
    jnz _divide_loop               ; Check if done
    sub rsp, 2                       ; stores the 0x hex identifier
    mov word [rsp], "0x"
    lea rsi, [rsp]
    printWord rsi
    jmp _end
_end:
    poprbp                   ; pops off the base to the og position
    ret

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
    imul rax, rdx, 4 ;ints are offset by 4 bytes
    lea rdi, [rel sin_list]
    add rax, rdi
    mov rax, [rax]
    push rax
    movss xmm0, [rsp]
    pop rdi
    ret