	li	r1, 0
	li	r2, 0
top:
	adi	r1, 1
	adc	r2, r0
	put	r2, 0
	put	r1, 1
	j	top