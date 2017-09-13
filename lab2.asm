.include "led_keypad.asm"

# The .eqv directive defines constants.
# USE CONSTANTS! Hard-coding "magic numbers" into programs is a bad idea.
.eqv NUM_COLUMNS 4
.eqv NUM_ROWS    4
.eqv BLOCK_W     5
.eqv BLOCK_H     3

.data
left_msg:    .asciiz "holding left\n"
right_msg:   .asciiz "holding right\n"

# variable to contain the key the user is holding
holding_key: .word 0

block_arr:
	# here, use the .byte directive to make 4 rows of 4 values each.
.text

#---------------------------------------------------------
.globl main
main:
	# clearScreen()

	# for(col = 0; col < NUM_COLUMNS; col++) {
	#    for(row = 0; row < NUM_ROWS; row++) {
	#        address = get_arr_address(col, row)
	#        Display_FillRect(col * BLOCK_W, row * BLOCK_H, BLOCK_W, BLOCK_H, *address)
	#    }
	# }

	# while(true) {
	#     checkInput()
	#     if(holding_key == KEYDOWN_L)
	#         print("holding left\n")
	#     else if(holding_key == KEYDOWN_R)
	#         print("holding right\n")
	# }

#---------------------------------------------------------
# check_input takes no parameters and returns nothing.
# it should update the holding_key variable.

check_input:
	# key = Input_GetKeypress()
	# if(key == KEYDOWN_L || key == KEYDOWN_R)
	#     holding_key = key
	# else if(key == KEYUP_L || key == KEYUP_R)
	#     holding_key = 0