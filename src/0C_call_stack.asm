	# r6 = sp
	# r7 = ra
	li	r6, 0xFF
	li	r1, 10
	jal	r7, sum
	put	r1, 1
	halt

sum:
	# push ra
	sbi	r6, 1
	st	r7, r6

	# r1 != 1?
	li	r2, 1
	rsb	r2, r1
	bez	r2, base_case

	# push r1
	sbi	r6, 1
	st	r1, r6

	# sum(r1 - 1)
	sbi	r1, 1
	jal	r7, sum

	# pop r2
	ld	r2, r6
	adi	r6, 1

	# r1 += r2
	add	r1, r2
	j	sum_ret
base_case:
	li	r1, 1
sum_ret:
	ld	r7, r6
	adi	r6, 1
	jr	r7