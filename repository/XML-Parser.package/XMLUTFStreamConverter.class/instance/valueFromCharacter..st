converting
valueFromCharacter: aCharacter
	| asciiValue |

	(asciiValue := aCharacter asciiValue) > 16r10FFFF
		ifTrue: [self errorInvalidCharacter].

	^ asciiValue.