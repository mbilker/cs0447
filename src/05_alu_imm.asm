	li	r1, 1
	put	r1, 1	# 01
	adi	r1, 16
	put	r1, 1	# 11
	adi	r1, 16
	put	r1, 1	# 21
	sbi	r1, 16
	put	r1, 1	# 11
	sbi	r1, 16
	put	r1, 1	# 01
	halt