tokenizing - dtd
nextConditionalSectionOnWriteStream
	self
		skipSeparatorsInDeclaration;
		expectNext: $I.

	streamReader peek == $N
		ifTrue: [self nextIncludeSectionOnWriteStream]
		ifFalse: [self nextIgnoreSection].