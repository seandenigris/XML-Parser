tokenizing
nextName
	| nextChar |
	nameBuffer reset.
	self peek == $.
		ifTrue: [self malformedError: 'Character expected.'].
	[(nextChar := self peek)
		ifNil: [self errorExpected: 'Character expected.'].
	NameDelimiters includes: nextChar] whileFalse: [
			nameBuffer nextPut: self next].
	^self fastStreamStringContents: nameBuffer