tokenizing
nextGeneralEntityReferenceOnWriteStream
	driver handleStartEntityReferencePosition: self currentPosition - 1.
	self nextName.
	driver handleEndEntityReferencePosition: self currentPosition.
	self expectNext: $;.
	^ false.