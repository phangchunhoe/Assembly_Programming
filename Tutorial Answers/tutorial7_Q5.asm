org 100h

jmp start

image db 81h, 22h, 53h, 0F4h, 0D3h, 0E2h, 22h, 13h, 0A4h, 12h
results db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h

start:
mov cx, 10
lea si, image
lea di, results 

repeat:
mov al, [si]
call thresh

inc si
inc di
loop repeat

thresh proc
    push ax
    cmp al, 7Fh
    ja put_one
    mov [di], 00
    pop ax
    ret
    
    put_one:
    mov [di], 0FFh
    pop ax
    ret
thresh endp
ret