beq $2, $0, quit
add $3, $1, $0
add $4, $0, $0
lis $5
.word 1
printarray:
lw $1, 0($3)
lis $6
.word 4
add $3, $3, $6
add $4, $4, $5
lis $7
.word print
jalr $7
bne $4, $2, printarray
quit:
jr $31
