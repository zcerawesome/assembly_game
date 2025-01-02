%macro exit 1
    mov rax, 60
    mov rdi, %1
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
    mov rax, %2
    dec rsp
    mov byte [rsp], 0
%%_diving:
    xor rdx, rdx
    mov rdi, 10
    div rdi
    add rdx, 48
    dec rsp
    mov byte [rsp], dl
    cmp rax, 0
    jne %%_diving
    lea rsi, [rsp]
    printWord rsi
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
    mov rbx, %1
    push 0
%%_reading:
    cmp byte [rbx], 0
    je %%_print
    inc rbx
    inc qword [rsp]
    jmp %%_reading
%%_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    pop rdx
    syscall
%endmacro