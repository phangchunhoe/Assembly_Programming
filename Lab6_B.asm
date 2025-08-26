; Lab6b.asm

org 100h     
        
jmp start
        
marks   db 49,80,65,50,22,100,57,79,81,15
failcnt db 0
distcnt db 0
passcnt db 0     

start:  mov cx, 10
        lea si, marks
again:  cmp [si], 50
        jb  fail
        cmp [si], 80
        jae dist
        jmp pass
next:   inc si
        loop again
        jmp end
fail:   inc failcnt
        jmp next
dist:   inc distcnt
        jmp next
pass:   inc passcnt
        jmp next        
end:    ret