$0 value 0
$1 n input to function
$2 r input to function
$3 return value of function
$4 local variable for function
$5 stack pointer
$6 temporary value (can hold different values at different times, e.g.
 +1, -1, function address)
$7 return address
 
 lw 0 2 r
 lw 0 1 n
start beq 2 0 L1    //r=0 go L1
 beq 1 2 L1         //n=r go L1
 sw 5 1 stack1      // 1 = n
 sw 5 2 stack2      // 2 = r
 lw 0 6 neg1
 add 1 6 1          // n=n-1
 jalr 7 start       // save address ไว้แล้ว ไป start
 ld 5 1 stack1      // โหลดค่าเก่าของ n มา
 ld 5 2 stack2      // โหลดค่าเก่าของ r มา
 sw 5 3 stackout    // เก็บ combi(n-1,r) ไว้
 lw 0 6 neg1
 add 2 6 2          // r=r-1
 jalr 7 start       // save address ไว้แล้ว ไป start
 lw 5 6 stackout    // 6 = combi(n-1,r)
 add 6 4 3          // output = combi(n-1,r)+combi(n-1,r-1)
 halt
L1 lw 0 6 pos1
   add 0 6 3        // output = 1
   beq 0 0 7
pos1 .fill 1
neg1 .fill -1 
n    .fill inputn
r    .fill inputr
stack1 .fill 50
stack2 .fill 51
stackout .fill 60 