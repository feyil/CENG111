org 30h
veri: db "fey",10
db 0
org 20h
load r1,veri
load r2,1
load r0,0
furkan:
load rf,[r1]
addi r1,r1,r2
jmpeq rf=r0,done
jmp furkan
done:
