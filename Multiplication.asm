$0 = 0
$1 answer
$2 Mcand
$3 Mplier
$4 temp
$5 = 32 endloop
$6 selectbit
$7 = 1 constant

				lw		0		2		Mcand
				lw		0		3		Mplier
				lw		0		5		endloop
				lw		0		6		selectbit
				lw		0		7		one
				sw		7		4		storecountloop
selMplier		        nand	        3		6		4                               #selectMplier to temp
                                nand            4               4               4
				beq		0		4		shiftMcand
				add		2		1		1				#add Mcand to ans($1)
shMcand			        add		2		2		2				#shift Mcand
				add		6		6		6				#shift selectbit
				lw		7		4		storecountloop
				add		7		4		4
				sw		1		4		storecountloop
				beq		5		4		done1			#if bit 32 goto done
				beq		0		0		selectMplier
done			        noop
Mcand		 .fill		input1
Mplier		 .fill		input2
selectbit	 .fill		1
endloop		 .fill		32
one			 .fill		1
shiftMcand	 .fill		shMcand
done1		 .fill		done
selectMplier .fill		selMplier
storecountloop   .fill          50
