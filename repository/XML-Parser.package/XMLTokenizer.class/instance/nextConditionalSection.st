tokenizing - dtd
nextConditionalSection
	self
		skipSeparatorsReplacingParameterEntities;
		expectNext: $I.

	^ streamReader peek == $N
		ifTrue: [self nextIncludeSection]
		ifFalse: [self nextIgnoreSection].