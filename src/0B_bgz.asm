	li	r1, 1
	li	r2, 2
	li	r3, 3
	bgz	r0, fail
	sub	r0, r1
	bgz	r0, fail
	li	r0, 4
	bgz	r0, good
	put	r0, 1
	and	r0, r0
good:	halt
	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0
	put	r1, 1
	put	r1, 1
	halt
fail:	put	r2, 1
	halt
	and	r0, r0
	put	r3, 1
	put	r3, 1
	put	r3, 1
	put	r3, 1
	halt