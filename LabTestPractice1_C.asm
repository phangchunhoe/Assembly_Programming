org 100h
jmp start

SETA db 1, 6, 1, 6, 7, 2
SETB db 4, 5, 8, 5, 2, 6

start:      lea si, [SETA]
            lea di, [SETB]
            mov cx, 6
        
reverse:    mov al, [di]
            push ax
            inc di
            loop reverse
            mov cx, 6
            lea di, [SETB]
                      
return_it:  pop ax
            mov [di], al
            inc di 
            loop return_it
            mov cx, 6
            sub di, cx
            
add_values: mov bl, [si]
            add [di], bl
            inc di
            inc si
            loop add_values
            ret