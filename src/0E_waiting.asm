	li	r1, 0xAA
	li	r2, 0x55
	mul	r1, r2
	mfhl	r1, 0
	mfhl	r2, 1
	put	r2, 0
	put	r1, 1 # 3872 / 03AA

	li	r1, 0
	li	r2, 0
	mul	r1, r2
	mfhl	r1, 0
	mfhl	r2, 1
	put	r2, 0
	put	r1, 1 # 0000 / 0000

	li	r1, 0xFF
	li	r2, 0xFF
	mul	r1, r2
	mfhl	r1, 0
	mfhl	r2, 1
	put	r2, 0
	put	r1, 1 # FE01 / 0EFd
	halt

