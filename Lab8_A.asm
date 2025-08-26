; Lab8a.asm

   
        org 100h        
                         
        jmp start                              
                         
        datab db 01h,02h,02h,05h,07h,12h,03h,04h,07h,11h
                        
start:  mov di,1000h     ;result store in memory starting DS:1000h.        
        mov cx,10        ;counter for number of data.
        lea si,datab     ;offset to read next byte data.
        
again:  mov al,[si]       
        mov [di]2,al 
        inc si
        inc di  
        loop again
 
        mov di,2000h     ;result store in memory starting DS:2000h.
        mov cx,10        ;counter for number of data.
        lea si,datab
        mov bx,si 
        mov si,9 
        
again2: mov al,[bx][si]
        mov [di],al 
        dec si
        inc di             
        loop again2
                     
end:    ret