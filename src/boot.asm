
org 0x7C00

jmp 0x0000:start

start:

    mov ax, 0x00
    int 10h

    xor ax, ax
    mov bx, ax
    mov es, ax

    mov ax, 0xB800
    mov es, ax
    mov bx, 0x0000
    xor ax, ax

    mov ah, 0x0F
    mov al, 0x41
    mov [es:bx], ax

    times 510-($-$$) db 0
    
    dw 0xAA55