db 94h,0cbh 	;put the data addresses 00h and 01h(r1=10010100)(r2=11001011)
org 20h 		;for write program we indicate a origin
load r1,[00h] 	;load data in 00h memory address
load r2,[01h]     ;load data in 01h memory address
load r4,0fh		;load r4 in binary 00001111 for and operation
load r5,1		;load r5 in binary 00000001 for convert complement
load r6,0ffh	;load r6 in binary 11111111 for conver 1's complement
ror r1,4		;rotate content of r1 one bit to the right four times
and r1,r1,r4	;r1 and r4 store in r1(00001001)
and r2,r2,r4	;r2 and r4 store in r2(00001011)
xor r2,r2,r6	;convert r2 1's complement
addi r2,r2,r5	;convert r2 2's complement
addi r3,r1,r2	;add r1+r2 and put the result r3
xor r3,r3,r6	;because of minus value we can convert r3 in abs format
addi r3,r3,r5	;converting back(from 11111110 to 00000010)
;fey
;230201057
