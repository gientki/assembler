section .data
    msg db "hello word!", 0xA ; 0xA to znak nowej linii (\n)
    len equ $ - msg             

section .text
    global _start

_start:
    ; syscall: write(fd=1, buf=msg, count=len)
    mov eax, 4      
    mov ebx, 1     
    mov ecx, msg    
    mov edx, len    
    int 0x80        

    ; syscall: exit(code=0)
    mov eax, 1      
    xor ebx, ebx    
    int 0x80
