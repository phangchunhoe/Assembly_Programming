
org 100h

jmp start
marks db 30, 87, 48, 55, 47, 34, 76, 81, 31, 48   

start:        ; This is for the initialisation
mov cx, 10
lea si, marks

check:
cmp [si], 47
jb next
cmp [si], 50
jae next
mov [si], 50 

next:
inc si
dec cx
jnz check 


ret




