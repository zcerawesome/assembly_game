%macro exit 0
    mov rax, 60
    mov rdi, 1
    syscall
%endmacro

%macro printWord 1
    mov rax, %1
    push dword 0
_reading:
    cmp byte [rax], 0
    je _print
    inc rax
    inc dword [rsp]
    jmp _reading
_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    pop rdx
    syscall
%endmacro