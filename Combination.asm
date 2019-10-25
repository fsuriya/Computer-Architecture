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