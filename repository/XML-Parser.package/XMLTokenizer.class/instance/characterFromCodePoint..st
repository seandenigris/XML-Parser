entity replacement
characterFromCodePoint: aCodePoint
	(aCodePoint notNil and: [aCodePoint > 0])
		ifFalse: [self errorExpected: 'postive decimal or hex integer'].

	^ [aCodePoint asCharacter]
		on: Error
		do: [:error | self parseError: 'Invalid character code point ', aCodePoint printString]