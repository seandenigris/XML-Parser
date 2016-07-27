tokenizing
nextCharacterReferenceOnWriteStream
	driver handleStartEntityReferencePosition: self currentPosition - 2.
	streamReader nextInteger
		ifNil: [self errorExpectedIntegerCharacterReference].
	driver handleEndEntityReferencePosition: self currentPosition.
	self expectNext: $;.
	^ false.