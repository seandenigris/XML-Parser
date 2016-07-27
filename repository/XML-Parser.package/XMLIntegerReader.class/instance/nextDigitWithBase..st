private
nextDigitWithBase: aBase
	| digit |
	
	digit :=
		CharacterDigitValues
			at: stream peek asciiValue
			ifAbsent: [^ nil].
	(digit >= 0 and: [digit < aBase])
		ifFalse: [^ nil].
	stream next.
	^ digit.