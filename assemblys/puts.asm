#include<stddef.inc>

start:
ldi foo RAMEND_LOW
call puts
ldi a out1
ldi ff SFR

puts:
mov RAMEND_LOW r0

puts_loop:
pmov r0 r1
mov r1 out1
inc r0
jne r1 puts_loop
ret

.string foo "ich bin ein kleiner string"