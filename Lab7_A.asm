; Lab7a.asm

;subroutine example 

        org 100h        
                        ;procedure to multiply memory by 10D.
        jmp start                              
                         
        datab db 0Bh,02h,0A0h
                        
start:  mov di,1000h    ;result store in memory starting DS:1000h.
        mov ax,10       ;value of AL fixed at 10D for multiplication.
        mov cx,3        ;counter for number of data.
        mov si,0        ;offset to read next byte data.
        
again:  mov bl,si+datab ;get next value in memory.
        call multi      ;call procedure.
        inc di 
        inc si  
        loop again
        jmp end
        
multi   proc            ;procedure.
        push ax         ;save original value of AL.
        mul bl
        mov [di],al     ;AX=AL*BL.
        inc di
        mov [di],ah
        pop ax
        ret
multi   endp            ;end procedure.

end:    ret