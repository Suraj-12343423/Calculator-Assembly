section .bss
    buffer resb 64

section .text
global _start

_start:
    
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 64
    syscall

   
    mov rsi, buffer
    xor rbx, rbx

first_number:
    movzx rcx, byte [rsi]

    cmp cl, '+'
    je operator_found

    cmp cl, '-'
    je operator_found

    cmp cl, '*'
    je operator_found

    cmp cl, '/'
    je operator_found

    cmp cl, ' '
    je first_skip_space

    cmp cl, 10
    je exit

    sub cl, '0'
    imul rbx, rbx, 10
    add rbx, rcx

    inc rsi
    jmp first_number

first_skip_space:
    inc rsi
    jmp first_number


   
operator_found:
    mov r9b, cl
    inc rsi

   
skip_second_space:
    movzx rcx, byte [rsi]

    cmp cl, ' '
    jne second_number

    inc rsi
    jmp skip_second_space


    
second_number:
    xor r8, r8

second_loop:
    movzx rcx, byte [rsi]

    cmp cl, 10
    je calculate

    cmp cl, ' '
    je calculate

    sub cl, '0'
    imul r8, r8, 10
    add r8, rcx

    inc rsi
    jmp second_loop


   
calculate:

    cmp r9b, '+'
    je addition

    cmp r9b, '-'
    je subtraction

    cmp r9b, '*'
    je multiplication

    cmp r9b, '/'
    je division

    jmp exit


   
addition:
    add rbx, r8
    jmp exit


    
subtraction:
    sub rbx, r8
    jmp exit


    
multiplication:
    imul rbx, r8
    jmp exit


    
division:
    mov rax, rbx
    xor rdx, rdx
    div r8
    mov rbx, rax
    jmp exit


    
exit:
    mov rdi, rbx
    mov rax, 60
    syscall










    