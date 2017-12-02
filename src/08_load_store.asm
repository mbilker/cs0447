	li	r1, 2
	li	r2, 0
	st	r1, r2
	adi	r1, 1
	adi	r2, 1
	st	r1, r2
	adi	r1, 1
	adi	r2, 1
	st	r1, r2

	li	r1, 0
	ld	r2, r1
	adi	r1, 1
	ld	r3, r1
	adi	r1, 1
	ld	r4, r1

	li	r1, 1
	put	r1, 1
	put	r2, 1
	put	r3, 1
	put	r4, 1
	halt