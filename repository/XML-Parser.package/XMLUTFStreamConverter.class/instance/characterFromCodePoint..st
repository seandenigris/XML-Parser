converting
characterFromCodePoint: aCodePoint
	aCodePoint >= 16rD800
		ifTrue: [
			(aCodePoint <= 16rDFFF "no code points in the high surrogate area"
				or: [aCodePoint > 16r10FFFF]) "max code point"
				ifTrue: [self errorBadCharacterValue: aCodePoint]].

	^ Character value: aCodePoint.