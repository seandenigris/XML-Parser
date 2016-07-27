converting
characterFromCodePoint: aCodePoint
	aCodePoint > 16r10FFFF "max code point"
		ifTrue: [self errorBadCharacterValue: aCodePoint].
	^ Character value: aCodePoint.