	# r1 = lo
	# r2 = hi
top:
	# read key
	in	r3
	bez	r3, top

	# get upper nybble in r4
	li	r4, 0
	add	r4, r3
	sri	r4, 4

	# looking for 3 (0-9), 4 (A-F) or 6 (a-f)
	sbi	r4, 3
	bez	r4, its_digit
	sbi	r4, 1
	bez	r4, its_upper
	sbi	r4, 2
	bez	r4, its_lower

	# none of the above.
	j	top

its_digit:
	# 0-9 is 0x30~0x39
	sbi	r3, 0x40
	bez	r3, top
	bgz	r3, top
	adi	r3, 0x10
	j	display_it

its_upper:
	# A-F is 0x41~0x46
	sbi	r3, 0x47
	bez	r3, top
	bgz	r3, top
	adi	r3, 0x10 # +6 to put it back in 0..5, +10 to make it A-F
	j	display_it

its_lower:
	# a-f is 0x61~0x66
	sbi	r3, 0x67
	bez	r3, top
	bgz	r3, top
	adi	r3, 0x10
	j	display_it

display_it: # expects new nybble in r3
	# save lo byte in r4
	li	r4, 0
	add	r4, r1

	# shift new character into lo nybble of lo byte
	sli	r1, 4
	or	r1, r3

	# shift old hi nybble of lo byte into lo nybble of hi byte
	sri	r4, 4
	sli	r2, 4
	or	r2, r4

	# display
	put	r2, 0
	put	r1, 1
	j	top