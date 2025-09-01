org 100h

jmp start
valueA dw 1F45h
valueB dw 1745h
valueC dw 1088h

start:

mov ax, valueA
mov bx, valueB
mov cx, valueC


main: 
cmp ax, bx
jne if
call else
ret 

if: 
inc cx
push bx
add bx, 2
mov ax, bx
pop bx
ret 

else proc
    dec cx
    push bx
    sub bx, 2
    mov ax, bx
    pop bx
    ret    
else endp


ret