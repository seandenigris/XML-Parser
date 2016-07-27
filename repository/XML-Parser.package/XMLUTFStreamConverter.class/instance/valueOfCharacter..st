converting
valueOfCharacter: aCharacter
	| codePoint |

	(codePoint := aCharacter asciiValue) > 16r10FFFF
		ifTrue: [self errorInvalidCharacter].

	^ codePoint.