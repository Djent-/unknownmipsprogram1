#	s/my name/censorbar/
#	Program1.asm

.data
A: .word 23
B: .word 7
CompA: .word 0
Sum: .word 0
ALessB: .word 0
BLessA: .word 0
Tab: .asciiz "\t"
.text
lw $t0, A
lw $t1, B
neg $t2, $t0
sw $t2, Sum
add $t3, $t0, $t1
sw $t3, CompA
sub $t4, $t0, $t1
sw $t4, ALessB
sub $t5, $t1, $t0
sw $t5, BLessA
li $v0, 1
lw $a0, A
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 1
lw $a0, B
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 1
lw $a0, Sum
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 1
lw $a0, CompA
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 1
lw $a0, ALessB
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 1
lw $a0, BLessA
syscall
li $v0, 4
la $a0, Tab
syscall
li $v0, 10
syscall

#	Output:
#
#23	7	-23	30	16	-16	
#-- program is finished running --
#
