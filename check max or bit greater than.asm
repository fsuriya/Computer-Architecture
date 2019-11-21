$0 value 0
$1 n input to function
$2 r input to function
$3 return value of function
$4 local variable for function
$5 stack pointer
$6 temporary value (can hold different values at different times, e.g.
 +1, -1, function address)
$7 return address
//check 2 to bitgeaterthan output = max value
 
 lw 0 2 r
 lw 0 1 n
 beq 1 2 equ 
start lw 0 6 neg  
 add 1 6 1      //n=n-1
 add 2 6 2           //r=r-1
 beq 1 0 nlt           //n=0 go nlt
 beq 2 0 rlt           //r=0 go rlt
 beq 0 0 start         //goto start
nlt lw 0 2 r 
 add 0 2 3          //r>n r = max n = min
 halt
rlt lw 0 1 n 
 add 0 1 3          //n>r n = max r = min 
 halt
equ halt
neg .fill -1 
r .fill 1
n .fill 5
