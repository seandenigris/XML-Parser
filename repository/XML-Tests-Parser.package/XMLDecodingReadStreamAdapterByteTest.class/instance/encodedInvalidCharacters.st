accessing
encodedInvalidCharacters
	^ self stringFrom:
		#(16r0100
			16rD800
			16rDBFF
			16rDC00
			16rD8FF)
	"16r11FFFF is ommitted because GS disallows chars with >= that value"