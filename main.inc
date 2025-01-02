%macro exit 0
    mov rax, 60
    mov rdi, 1
    syscall
%endmacro

%macro printf 2
    push rbp
    mov rbp, rsp
    mov al, %1
    cmp al, "s"
    je %%_printword
    cmp al, "d"
    je %%_printNum

%%_printword:
    printWord %2
    jmp %%_end

%%_printNum:
    mov rax, %2          ; Load number to convert
    sub rsp, 32          ; Reserve space for the string
    lea rsi, [rsp]       ; rsi points to buffer start
    mov byte [rsi + 31], 0  ; Add null terminator at the end
    mov rdi, rsi         ; rdi points to the end of the buffer (write backward)
    add rdi, 30

%%_diving:
    xor rdx, rdx         ; Clear rdx
    mov rcx, 10          ; Set divisor (10)
    div rcx              ; rax = quotient, rdx = remainder
    add dl, 48           ; Convert remainder to ASCII
    mov [rdi], dl        ; Store digit in buffer
    dec rdi              ; Move pointer backward
    test rax, rax        ; Check if rax == 0
    jnz %%_diving        ; If not, continue dividing

    lea rsi, [rdi + 1]   ; Adjust rsi to point to the first digit
    printWord rsi        ; Print the null-terminated string
    add rsp, 32          ; Restore stack space
    jmp %%_end

%%_end:
    mov rsp, rbp
    pop rbp
%endmacro


%macro print 1
    push %1
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 1
    syscall
    pop rax
%endmacro

%macro printWord 1
    mov rax, %1
    push dword 0
%%_reading:
    cmp byte [rax], 0
    je %%_print
    inc rax
    inc dword [rsp]
    jmp %%_reading
%%_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    pop rdx
    syscall
%endmacro