$0 = 0
$1 answer
$2=0 #start bit
$3=1
$4=1 #select bit
$5=32
$6 #temp
$7=0 #start shift loop

		lw		0		4		selectbit
		lw		0		5		loop
		lw		0		2		startbit
		lw		0		3		one
		lw		0		7		startshiftloop
combi 	nand	Mplier	4		6
		nand	6		6		6			#selecte Mplier bit
		add		4		4		4			#shift select Mplier bit
		nand	Mcand	6		6
		nand	6		6		6			#multiplier
shift 	beq		2		7		4
		add		6		6		6
		add		7		3		7
		beq		0		0		shift		#end of shift
		add		1		6		1			#store answer
		add		2		3		2			
		beq		2		5		2			#check end loop mul
		beq		0		0		combi
done	noop
Mcand			.fill	input1
Mplier			.fill	input2
shift			.fill	shift
combi			.fill	combi
selectbit		.fill	1
loop			.fill	32
startbit		.fill	0
one				.fill	1
startshiftloop	.fill	0