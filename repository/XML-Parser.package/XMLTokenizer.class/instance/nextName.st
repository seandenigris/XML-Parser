tokenizing
nextName
	| nextChar |
	nameBuffer reset.
	streamReader peek == $.
		ifTrue: [self malformedError: 'Character expected.'].
	[(nextChar := streamReader peek)
		ifNil: [self errorExpected: 'Character expected.'].
	NameDelimiters includes: nextChar] whileFalse: [
			nameBuffer nextPut: streamReader next].
	^ self fastStreamStringContents: nameBuffer.