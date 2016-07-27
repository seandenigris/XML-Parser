accessing
encodedInvalidCharacters
	^ self stringFrom: #(16r0100)
	"16r11FFFF is ommitted because GS disallows chars with >= that value"