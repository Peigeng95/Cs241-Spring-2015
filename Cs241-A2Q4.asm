lis $4
.word 4
mult $4, $2
mflo $4
add $4, $1, $4
lis $5
.word 4
sub $4, $4, $5
lw $3, 0($4)
beq $4, $1, end
top:
sub $4, $4, $5
lw $6, 0($4)
slt $7, $6, $3
bne $7, $0, 1
add $3, $6, $0
bne $4, $1, top
end:
jr $31
