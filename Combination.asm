		$4=1 #select bit
		$5=15
		$2=0 #start bit
		$3=1
		$7=0 #start shift loop
combi :	nand	Mplier	4		6
		nand	6		6		6			#selecte Mplier bit
		add		4		4		4			#shift select Mplier bit
		nand	Mcand	6		6
		nand	6		6		6			#multiplier
shift :	beq		2		7		4
		add		6		6		6
		add		7		3		7
		beq		0		0		shift		#end of shift
		add		1		6		1			#store answer
		add		2		3		2			
		beq		2		5		2			#check end loop mul
		beq		0		0		combi
		noop
done :	halt

#IN RICS-V
addi x4,x0,1
addi x5,x0,15
addi x2,x0,0
addi x3,x0,1
addi x7,x0,0
addi x10,x0,3 #Mcand
addi x11,x0,3 #Mplier

and x6,x11,x4

add x8,x0,x4
add x4,x4,x8

and x6,x10,x6

beq x2,x7,24
add x8,x0,x6
add x6,x6,x8
add x7,x7,x3
beq x0,x0,-16

add x1,x1,x6
add x2,x3,x2
beq x2,x2,8
beq x0,x0,-64
addi x20,x0,1
