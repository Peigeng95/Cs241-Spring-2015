lis $8
.word 64
lis $7
.word 4
lis $6
.word 0xffff000c
add $3, $1, $0
lis $4
.word 4
mult $4, $2
mflo $4
add $4, $4, $1
top:
beq $2, $0, end
lw $5, 0($3)
beq $5,$0, 1
add $5, $5, $8
bne $5, $0, 2
lis $5
.word 32
sw $5, 0($6)
add $3, $3, $7
bne $3, $4, top
end:
jr $31
