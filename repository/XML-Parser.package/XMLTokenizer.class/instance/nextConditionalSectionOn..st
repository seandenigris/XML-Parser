tokenizing - dtd
nextConditionalSectionOn: aWriteStream
	self
		skipSeparatorsReplacingParameterEntities;
		expectNext: $I.

	^ streamReader peek == $N
		ifTrue: [self nextIncludeSectionOn: aWriteStream]
		ifFalse: [self nextIgnoreSection].