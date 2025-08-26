; Lab6a.asm

org 100h                      
jmp start               
product1 dw 2 dup(?)
product2 dw 2 dup(?)
quotient dw 2 dup(?)                      
start:
                    ; byte multiplication
mov bx, 0088h
mov al, 16
mul bl
mov [product1], ax    ; word product stored in AX
                      
shl bx,4
mov product1+2, bx  ; result same with mul by 4?
                      
                    ; word multiplication
mov cx,0f0f0h
mov ax,128
mul cx
mov product2, ax    ; double word product
mov product2+2, dx  ; stored in DX:AX
                      
                    ; byte division
mov ax, 00cch
mov bl, 4
div bl              ; result returned in AL,
mov quotient, ax	; remainder in AH
                      
mov al, 11001100b
shr al, 2        	; AL divided by 4?
mov quotient+2, ax  ; same quotient?
                      
                    ; rotate instructions
mov cl, 4
mov bl, 11011011b                     
rol bl, cl
ret