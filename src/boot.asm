
org 0x7C00

jmp 0x0000:start

start:

    mov ax, 0x00
    int 10h

    times 510-($-$$) db 0
    
    dw 0xAA55