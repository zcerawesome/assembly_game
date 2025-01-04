%macro exit 1
    mov rax, 60
    mov rdi, %1
    syscall
%endmacro

%macro printf 2
    push rbp
    mov rbp, rsp
    mov al, %1
    cmp al, "s" ;Print string
    je %%_printword
    mov rsi, 0
    cmp al, "d" ; print signed value
    je %%_printNum
    cmp al, "u" ; print unsigned value
    je %%_printU
    cmp al, "p" ; print memory_address in base 16, regular way
    je %%_printAddy
%%_printword:
    printWord %2 ; simply prints the pointer value
    jmp %%_end

%%_printU:
    mov rsi, "+" ; if unsigned, allocate "-" to rsi to tell the code not to count the first bit as negative if it is 1
    jmp %%_printNum

%%_printNum:
    mov rax, %2 ; moves the value into rax
    cmp rax, 0 ; if greater than 0 or unsigned, start regular printing
    jge %%_start_process
    cmp rsi, "+" 
    je %%_start_process
    mov rsi, "-" ; hold the rsi to push later
    neg rax      ; set the rax to "positive" to print properly
%%_start_process:
    dec rsp                         ; set null character at the beginning
    mov byte [rsp], 0
%%_diving:
    xor rdx, rdx                    ; Set rdx to 0 and divide by 10 with rdi
    mov rdi, 10
    div rdi
    add rdx, 48
    dec rsp
    mov byte [rsp], dl              ; add 48 for ascii and add to stack by a byte
    cmp rax, 0
    jne %%_diving
    cmp rsi, "-"                    ; Checks if it is negative (it is found if negative earlier)
    jne %%_start_printing_process
    cmp rsi, "+"
    jne %%_start_printing_process   ; Checks if it is unsigned
    dec rsp
    mov byte [rsp], "-"
%%_start_printing_process:
    lea rsi, [rsp]                  ; Loads rsp to rsi to print properly then ends
    printWord rsi
    jmp %%_end
    
%%_printAddy:
    mov rsi, 16                     ; Moves the count to rsi (mem addresses are 16 digits in hex)
    mov rax, %2
    dec rsp
    mov byte [rsp], 0 ; holds the remainder value, rbp is pointing right underneath
%%_divide_loop:
    mov rdx, 0                      ; divides by 16
    mov rdi, 16
    div rdi

    mov byte [rbp-1], dl            ; Puts the dl value into the "local variable"
    lea rdx, [rel sixteen_bit_address] ; puts memory address of sixteen_bit_address to rdx then add by offset in rbp-1
    add rdx, [rbp -1]

    mov rdx, [rdx]                  ; moves the values its pointing to to itself

    dec rsp
    mov [rsp], dl                   ; "pushes" to the stack

    dec rsi
    test rsi, rsi
    jnz %%_divide_loop               ; Check if done
    sub rsp, 2                       ; stores the 0x hex identifier
    mov word [rsp], "0x"
    lea rsi, [rsp]
    printWord rsi
    jmp %%_end
%%_end:
    mov rsp, rbp                     ; pops off the base to the og position
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
    mov rsi, %1
    mov edx, [rsp]      ; moves value to edx and offsets the 4 byte rsp
    add rsp, 4
    syscall
%endmacro