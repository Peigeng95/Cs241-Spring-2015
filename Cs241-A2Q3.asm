lis $3
.word -1
beq $2, $0, 1
lis $4
.word 4
mult $4, $2
mflo $4
add $4, $1, $4
lw $3, -4($4)
jr $31
