%macro exit 0
    mov rax, 60
    mov rdi, 1
    syscall
%endmacro

