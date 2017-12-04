	li	r1, 0xFF
	li	r2, 0xFF
	mul	r1, r2

	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0

	mfhl	r1, 0
	mfhl	r2, 1
	put	r2, 0
	put	r1, 1
	halt

	# should output FE01.
	# getting 7E81? running 1 too few steps.
	# getting 01FE or 817E? you've got the output logic swapped.