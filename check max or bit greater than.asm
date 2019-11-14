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
 
 beq 1 2 equ 
start add 1 1 neg      //n=n-1
 add 2 2 neg           //r=r-1
 beq 1 0 nlt           //n=0 go nlt
 beq 2 0 rlt           //r=0 go rlt
 beq 0 0 start         //goto start
nlt add 3 2 0          //r>n r = max n = min
 halt
rlt add 3 1 0          //n>r n = max r = min 
 halt
equ halt
neg .fill -1 