tokenizing
nextCharacterReferenceOnWriteStream
	driver handleStartEntityReferencePosition: self currentPosition - 2.
	self nextInteger
		ifNil: [self errorExpected: 'integer'].
	driver handleEndEntityReferencePosition: self currentPosition.
	self expectNext: $;.
	^ false.