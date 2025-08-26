org 100h
jmp start

Array_A db 54, 45, 81, 34, 76, 83, 92, 27, 13, 48
Count db 0

start:      lea si, Array_A
            mov cx, 10
        
again:      mov ax, 0
            mov al, [si]
            mov bl, 2
            div bl
            cmp ah, 0
            jne add_count
            
continue:   inc si
            loop again
            ret
            
add_count:  inc count
            jmp continue
