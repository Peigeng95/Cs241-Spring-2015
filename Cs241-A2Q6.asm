lis $9
.word 0xffff000c
lis $3
.word 10
lis $4
.word 4
lis $5
.word 0x00001000
add $10, $5, $0
lis $11
.word 48
lis $8
.word 45
slt $7, $1, $0
lis $14
.word -2147483648
bne $14, $1, tp
sw $8, 0($9)
lis $15
.word 2
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 1
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 4
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 7
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 4
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 8	
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 3
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 6
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 4
add $15, $15, $11
sw $15, 0($9)
lis $15
.word 8
add $15, $15, $11
sw $15, 0($9)
beq $0, $0, end
tp:
beq $7, $0, top
sw $8, 0($9)
sub $1, $0, $1
top:
div $1, $3
mflo $1
mfhi $6
sub $5, $5, $4
add $6, $6, $11
sw $6, 0($5)
bne $1, $0, top
mid:
lw $6, 0($5)
sw $6, 0($9)
add $5, $5, $4
bne $5, $10, mid
end:
sw $3, 0($9)
jr $31
