	li	r1, 1
	li	r2, 2
	li	r3, 3
	li	r4, 4
	bnz	r0, fail
	and	r1, r1
	bnz	r1, good
	put	r4, 1
good:	halt
	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0
	and	r0, r0
	put	r1, 1
	put	r1, 1
fail:	put	r2, 1
	halt
	and	r0, r0
	and	r0, r0
	and	r0, r0
	put	r3, 1
	put	r3, 1
	halt
