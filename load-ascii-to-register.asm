# t0, t1, t2, a0, a1, a2, a3, a4  (used regs)
# t3, t4, t5, t6, a5, a6, a7	  (available regs)

income_from_record:
ld  a1, (a0) 					# load mem adress of string into a1
li t0, 13					# ascii cr
li t1, 0					# loop counter

len_of_str:
lbu t2, (a1)					# ascii char at current position in memory
beq t0, t2, after_length			# if cr found, branch

addi t1, t1, 1					# loop count +1
addi a1, a1, 1					# moves to next adress in memory

j len_of_str


after_length:

addi a1, a1, -1					# move to one's place digit
li a2, 0					# loop counter for calc_loop
li a3, 1					# for exponent loop
li a4, 10					# for exponent loop
li a0, 0					# clear a0 for sum

calc_loop:

beq t1, a2, after_calc

lbu t0, (a1)					# ascii val into t0
addi t0, t0, -48				# numeric value of ascii
	
					
mul t0, t0, a3					# multiply by place value
add a0, a0, t0					# add to running sum

mul a3, a3, a4					# update place value multiplier 
		
addi a1, a1, -1					# increment memory location
addi a2, a2, 1					# add to loop counter

j calc_loop

after_calc:

ret