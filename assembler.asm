#subruledef register {
	r0  => 0x0
	r1  => 0x1
	r2  => 0x2
	r3  => 0x3
	r4  => 0x4
	r5  => 0x5
	r6  => 0x6
	r7  => 0x7
	r8  => 0x8
	r9  => 0x9
	r10 => 0xa
	r11 => 0xb
	r12 => 0xc
	r13 => 0xd
	r14 => 0xe
	r15 => 0xf
}

#ruledef
{
	nop => 0b0000 @ 0`12
	add {a: register} {b: register} {c: register} => 0b0010 @ a @ b @ c
	sub {a: register} {b: register} {c: register} => 0b0011 @ a @ b @ c
	nor {a: register} {b: register} {c: register} => 0b0100 @ a @ b @ c
	and {a: register} {b: register} {c: register} => 0b0101 @ a @ b @ c
	xor {a: register} {b: register} {c: register} => 0b0110 @ a @ b @ c

    	rsh {a: register} {c: register} => 0b0111 @ a @ 0`4 @ c
	ldi {a: register} {i:i8} => 0b1000 @ a @ i
	adi {a: register} {i:i8} => 0b1001 @ a @ i
	jmp {addr: u10} => 0b1010 @ 0`2 @ addr
	brh {cond: u2} {addr: u10} => 0b1011 @ cond @ addr

    	cal {addr: u10} => 0b1100 @ 0`2 @ addr
	ret => 0b1101 @ 0`12
	lod {a: register} {b: register} {i: s4} => 0b1110 @ a @ b @ i
	str {a: register} {b: register} {i: s4} => 0b1111 @ a @ b @ i
	hlt => 0b0001 @ 0`12
}

#ruledef {
	cmp {a: register} {b: register} => asm {sub {a} {b} r0}
	mov {a: register} {c: register} => asm {add {a} r0 {c}}
	lsh {a: register} {c: register} => asm {add {a} {a} {c}}
	inc {a: register} => asm {adi {a} 1}
	dec {a: register} => asm {adi {a} -1}
	not {a: register} {c: register} => asm {nor {a} r0 {c}}
	neg {a: register} {c: register} => asm {sub r0 {a} {c}}

	psh {a: register} => asm {
 adi r15 -1
 str r15 {a} 0
 }
	pop {a: register} => asm {
 adi r15 1
 str {a} r15 0
 }
}

ldi r15 240
