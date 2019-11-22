$0 = 0
$1 answer
$2 Mcand
$3 Mplier
$4 temp
$5 = 32 endloop
$6 selectbit
$7 = 1 constant

				lw		0		2		Mcand			#$2 = Mcand
				lw		0		3		Mplier			#$3 = Mplier
				lw		0		5		endloop			#$5 = endloop
				lw		0		6		selectbit		#$6 = selectbit
				lw		0		7		one			#$7 = constant value 1
				sw		7		4		loopcount		#initailize countloop
				lw		0		4		blockoverflow		
				sw		7		4		memoverflow		#constant overflow value 
selMplier			nand		3		6		4               	#selectMplier to temp
				nand		4		4		4			#true selectMplier
				beq		0		4		shMcand			#if selectMplier == 0 skip add
				add		2		1		1			#add Mcand to answer($1)
shMcand				add		2		2		2			#shift Mcand
				lw		7		4		memoverflow		#load memory overflow to $4
				nand		2		4		4			#fillterdata
				nand		4		4		2			#true fillterdata
				add		6		6		6			#shift selectbit
				lw		7		4		loopcount		#load memory loopcount
				add		7		4		4			#loopcount++
				sw		7		4		loopcount		#store loopcount to memory
				beq		5		4		done			#if loopcount == 32 goto done
				beq		0		0		selMplier		#goto selMplier
done				halt									#end program
Mcand		 	.fill		32766
Mplier		 	.fill		10383
selectbit	 	.fill		1
endloop			.fill		31
one		 	.fill		1
loopcount	    	.fill	       	30
memoverflow		.fill		32
blockoverflow		.fill		2147483647
