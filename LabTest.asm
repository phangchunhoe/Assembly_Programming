org 100h
jmp start

Marks db 34,56,30,38,49,78,46,43,81,45
critical db 0    

start:      lea si, Marks
            mov cx, 10

check:      cmp [si], 43
            jb repeat
            cmp [si], 49
            ja repeat
            inc critical
            
repeat:     inc si
            loop check
            ret               