	li	r1, 0x01
	li	r2, 0xFF
	put	r1, 0
	put	r2, 1 # 01FF

	li	r3, 0x01
	add	r2, r3
	adc	r1, r0
	put	r1, 0
	put	r2, 1 # 0200

	sub	r2, r3
	sbc	r1, r0
	put	r1, 0
	put	r2, 1 # 01FF

	rsb	r2, r0
	rsc	r1, r0
	put	r1, 0
	put	r2, 1 # FE01
	halt