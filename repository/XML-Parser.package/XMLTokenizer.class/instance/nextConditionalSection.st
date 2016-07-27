tokenizing dtd
nextConditionalSection
	self skipSeparatorsReplacingParameterEntities.
	self expectNext: $I.
	^ streamReader peek == $N
		ifTrue: [self nextIncludeSection]
		ifFalse: [self nextIgnoreSection].