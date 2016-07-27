converting
codePointFromCharacter: aCharacter
	| codePoint |

	(codePoint := aCharacter asciiValue) >= 16rD800
		ifTrue: [
			(codePoint <= 16rDFFF "no code points in the high surrogate area"
				or: [codePoint > 16r10FFFF]) "max code point"
				ifTrue: [self errorBadCharacterValue: codePoint]].

	^ codePoint.