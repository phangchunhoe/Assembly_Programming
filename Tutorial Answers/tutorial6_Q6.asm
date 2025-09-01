org 100h

jmp start
marks db 30, 87, 48, 55, 47, 34, 76, 81, 31, 48   

start:        ; This is for the initialisation
mov cx, 10    ; This is used to indicate the size of the array
mov dx, 10
lea si, marks


first_check:
mov ah, [si]
mov al, [si + 1]
cmp ah, al
; cmp [si], [si+1]
ja xchange
inc si 
loop first_check

repeat:

mov cx, 10
sub si, cx
dec dx
cmp dx, 0
jne first_check
ret



xchange:
xchg [si], [si + 1]
mov bh, [si]
mov bl, [si + 1]
mov [si], bl
mov [si + 1], bh
jmp first_check
