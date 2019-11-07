
$0 value 0
$1 n input to function
$2 r input to function
$3 return value of function
$4 local variable for function
$5 stack pointer
$6 temporary value (can hold different values at different times, e.g.
 +1, -1, function address)
$7 return address

start beq 2 0 L1    //r=0 go L1
 beq 1 2 L1         //n=r go L1
 sw 5 5 -24         // จอง stack
 sw 7 5 24
 sw 3 5 16          // จอง output
 sw 1 5 8           // 1 = n
 sw 2 5 0           // 2 = r
 add 1 1 neg1       // n=n-1
 jalr 7 start       // save address ไว้แล้ว ไป start
 ld 1 5 8           // โหลดค่าเก่าของ n มา
 ld 2 5 0           // โหลดค่าเก่าของ r มา
 sw 3 5 16          // เก็บ combi(n-1,r) ไว้
 add 2 2 neg1       // r=r-1
 jalr 7 start       // save address ไว้แล้ว ไป start
 lw 6 5 16          // 6 = combi(n-1,r)
 ld 7 5 24          
 sw 5 5 24          // เครียร์ stack
 add 3 6 4          // output = combi(n-1,r)+combi(n-1,r-1)
 halt
L1 add 3 0 pos1     // output = 1
 halt or noop ?
pos1 .fill 1
neg1 .fill -1 