org 100h

jmp start

marks     db 30,87,48,55,47,34,76,81,31,48
pass db 0
fail db 0

start:
    mov cx, 10
    lea si, marks
    
again:
    mov al, [si]
    call count
    inc si
    dec cx
    jnz again
    ret

count:
    push ax
    cmp al, 49
    ja above
    inc [fail]
    pop ax
    ret

above:
    inc [pass]
    pop ax
    ret