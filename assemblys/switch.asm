#include<stddef.inc>

ldi 1 r1

switchStart:
mov r1 r2
subi 1 r2
jeq r2 switch1
mov r1 r2
subi 2 r2
jeq r2 switch2
mov r1 r2
subi 3 r2
jeq r2 switch3
jmp switchEnde
; arg1 in r1

switch1:
mov ausgabe1 out1
jmp switchEnde

switch2:
mov ausgabe2 out1
jmp switchEnde

switch3:
mov ausgabe3 out1
jmp switchEnde

switchEnde:
ldi a out1
ldi ff SFR

.set ausgabe1 'a'
.set ausgabe2 'b'
.set ausgabe3 'c'