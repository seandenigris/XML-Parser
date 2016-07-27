accessing
encodedInvalidCharacters
	^ self stringFrom:
		#(16r00 16rD8 16r00 16r00
			16rFF 16rDB 16r00 16r00
			16r00 16rDC 16r00 16r00
			16rFF 16rD8 16r00 16r00
			16rFF 16rFF 16r11 16r00)