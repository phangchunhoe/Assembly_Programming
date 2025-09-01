
org 100h

NUM1 DW 1234h
NUM2 DW 7A24h
         
MOV AX, 0000h 
MOV AX, NUM1
ADD AX, NUM2  ; CF=0, ZF=0, SF=1



ret




