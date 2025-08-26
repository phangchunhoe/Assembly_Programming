;subroutine example  

org 100h
                        ;procedure to calculate squares
jmp start    

datab db 08h,02h,05h

start:  mov di,1000h    ;result store in memory starting DS:1000h.
        mov cx,3        ;counter for number of data.
        mov si,0        ;offset to read next byte data.
        
again:  mov al,si+datab ;get next value in memory.
        call squared    ;call procedure.
        inc di          
        inc si
        loopnz again
        jmp end  
        
squared proc            ;procedure.
        mul al
        mov [si+datab], al
        ret
squared endp            ;end procedure.  

end: ret                                                                 


