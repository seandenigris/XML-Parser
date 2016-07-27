converting
codePointFromCharacter: aCharacter
	| codePoint |

	(codePoint := aCharacter asciiValue) > 16r10FFFF "max code point"
		ifTrue: [self errorBadCharacterValue: codePoint].
	^ codePoint.