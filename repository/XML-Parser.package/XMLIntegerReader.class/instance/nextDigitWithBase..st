private
nextDigitWithBase: aBase
	| digit nextChar |
	
	nextChar := stream peek.
	aBase = 16
		ifTrue: [digit := HexDigitCharacterMap at: nextChar ifAbsent: [^ nil]]
		ifFalse: [
			digit := nextChar asciiValue - $0 asciiValue.
			(digit >= 0 and: [digit <= 10])
				ifFalse: [^ nil]].
	stream next.

	^ digit.