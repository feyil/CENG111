veri: db 02eh,18h

org 20h
load r3,1
load r1,veri
load r2,[r1]
addi r1,r1,r3
load r4,[r1]