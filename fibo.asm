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
$2 = 1      #temp2
$3          #temp3
$4 = n      #input
$5 = 1      #i
$6 = 1

        beq     1       4       done
        beq     2       4       done
L1:     add     0       2       3
        add     1       2       2
        add     0       3       1
        add     5       6       5
        beq     5       4       L1
done    noop
end     .fill
L1      .fill
        