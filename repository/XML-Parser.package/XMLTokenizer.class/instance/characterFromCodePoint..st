entity replacement
characterFromCodePoint: aCodePoint
	aCodePoint > 0
		ifFalse: [self errorExpected: 'postive decimal or hex integer'].

	^ [self class encodingClass value: aCodePoint]
		on: Error
		do: [:error | self parseError: 'Invalid character code point ', aCodePoint printString]