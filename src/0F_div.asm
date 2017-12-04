	li	r1, 0xFE
	li	r2, 0x11
	div	r1, r2

	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0

	mfhl	r1, 0
	mfhl	r2, 1
	put	r2, 0
	put	r1, 1
	halt

	# should output 100E.
	# getting 0807? running 1 too few steps.
	# getting 0E10 or 0708? you've got the output logic swapped.