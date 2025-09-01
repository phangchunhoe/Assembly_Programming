org 100h

jmp start
data db 01h, 02h, 03h, 03h, 02h
result db 00h, 00h, 00h, 00h, 00h
     
     
start:
lea si, data
lea di, result  
mov cx, 5

repeat:
mov al, [si]
call square
inc si
inc di
loop repeat

square  proc
        push ax
        push bx
        mov bl, al
        mul bl
        mov [di], al
        pop bx
        pop ax
        ret
square  endp
        
ret