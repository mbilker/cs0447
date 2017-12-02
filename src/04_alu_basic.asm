	li	r1, 120

	li	r2, 30
	add	r2, r1
	put	r2, 1  # 96

	li	r2, 30
	sub	r2, r1
	put	r2, 1  # a6

	li	r2, 30
	rsb	r2, r1
	put	r2, 1  # 5a

	li	r2, 30
	and	r2, r1
	put	r2, 1  # 18

	li	r2, 30
	or	r2, r1
	put	r2, 1  # 7e

	not	r2, r1
	put	r2, 1  # 87
	halt