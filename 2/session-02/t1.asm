.include "m32def.inc"
		; Initialize Stack Pointer
		LDI		R16,HIGH(RAMEND)
		OUT		SPH,R16
		LDI		R16,LOW(RAMEND)
		OUT		SPL,R16

		;Initialize PORTC as OUTPUT
		LDI		R16,0xFF
		OUT		DDRC,R16
		
		;Displaying 2 on the 7Segment
		LDI		R16,0b01011011
		OUT		PORTC,R16
HERE:	RJMP	HERE

