accessing
encodedInvalidCharacters
	^ self stringFrom:
		#(16r00 16r00 16rD8 16r00
			16r00 16r00 16rDB 16rFF
			16r00 16r00 16rDC 16r00
			16r00 16r00 16rD8 16rFF
			16r00 16r11 16rFF 16rFF)