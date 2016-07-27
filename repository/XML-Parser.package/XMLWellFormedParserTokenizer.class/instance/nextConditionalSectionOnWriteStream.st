tokenizing - dtd
nextConditionalSectionOnWriteStream
	self
		skipSeparatorsReplacingParameterEntities;
		expectNext: $I.

	streamReader peek == $N
		ifTrue: [self nextIncludeSectionOnWriteStream]
		ifFalse: [self nextIgnoreSection].