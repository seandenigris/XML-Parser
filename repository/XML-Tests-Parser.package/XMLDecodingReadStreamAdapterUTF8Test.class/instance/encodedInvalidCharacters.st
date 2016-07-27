accessing
encodedInvalidCharacters
	^ self stringFrom:
		#(16rED 16rA0 16r80
			16rED 16rAF 16rBF
			16rED 16rB0 16r80
			16rED 16rA3 16rBF
			16rF4 16r9F 16rBF 16rBF)