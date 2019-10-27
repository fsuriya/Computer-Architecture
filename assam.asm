
combi:
beq x13,x0,L1    //r=0 go L1
beq x12,x13,L1   //n=r go L1
sw x2,-16(x2)    // จอง stack
sw x1,16(x2)
sw x12,8(x2)     //x12 = n
sw x13,0(x2)     //x13 = r
sw x6,-1(x0)     //x6 = -1
add x12,x12,x6   // n=n-1
jal combi
add x5,x10,x0    // x5 = combi(n-1,r)
add x13,x13,x6   // r=r-1
jal combi
add x4,x10,x0   // x4 = combi(n-1,r-1)
ld x1,16(x2)
sw x2,16(x2)
add x10,x5,x4
่jalr x0,0(x1)
L1
sw x7,1(x0)      //x7 = 1
add x10,x7,x0 
่jalr x0,0(x1)