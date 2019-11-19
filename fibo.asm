int main(int n){

    int temp3;
    int temp1 = 0;
    int temp2 = 1;

    if(n==0 || n==1) {return n;}
    else{
        for(int i = 1;i < n;i++){
            temp3 = temp2;
            temp2 = temp1 + temp2;
            temp1 = temp3;
        }
    }
    
}

$1 = 0      #temp1
$2 = 1      #temp2,return
$3          #temp3
$4 = n      #input
$5 = 1      #i
$6 = 1
        lw      0       1       temp1
        lw      0       2       temp2
        lw      0       4       n
        lw      0       5       i
        lw      0       6       one
        beq     1       4       done1
        beq     2       4       done2
L1      add     0       2       3
        add     1       2       2
        add     0       3       1
        add     5       6       5
        beq     5       4       L1
done1   add     0       1       2 
done2   noop
done1   .fill   done1
done2   .fill   done2
L1      .fill   L1
temp1   .fill   0
temp2   .fill   1
n       .fill   input_Argc        
if      .fill   1
one     .fill   1
