;subroutine example  

org 100h
                        
jmp start    

ascii_values dw 97,98,99

start:  mov cx,3
        lea si, ascii_values        
        
again:  mov ax, [si] 
        call Low2Up    
        inc si
        inc si
        loop again
        jmp end  
        
Low2Up proc            
        sub ax, 32
        mov [si], ax
        ret
Low2Up endp              

end: ret                                                                 


