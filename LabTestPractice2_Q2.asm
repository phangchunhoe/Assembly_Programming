org 100h
jmp start

GRADES db 54, 45, 81, 34, 76, 83, 92, 27, 13, 48
MAX_GRADE db 0

start:      lea si, GRADES
            mov cx, 10
        
again:      mov ax, 0
            mov al, [si]
            mov ah, [si + 1]
            cmp al, ah
            ja swap
            
continue:   inc si
            loop again
            ret
        
swap:       cmp max_grade, al
            ja continue
            mov max_grade, al
            jmp continue        

end:        ret