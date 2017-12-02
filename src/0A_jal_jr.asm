	jal	r7, f1
	jal	r7, f2
	halt

f2:
	li	r1, 0x9F
	put	r1, 1
	jr	r7

f1:
	li	r1, 0x54
	put	r1, 0
	jr	r7