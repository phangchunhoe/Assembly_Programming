; Lab6b.asm

org 100h     
        
jmp start
        
marks   db 49,80,65,50,22,100,57,79,81,15
total  dw 0

start:  mov cx, 10
        lea si, marks
        push ax
again:  mov al, [si]
        add total, ax
        inc si
        loop again
        
end:    pop ax
        ret