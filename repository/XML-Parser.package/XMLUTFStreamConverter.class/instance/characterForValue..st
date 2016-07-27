converting
characterForValue: aCodePoint
	aCodePoint > 16r10FFFF
		ifTrue: [self errorInvalidCharacter].

	^ Character value: aCodePoint.