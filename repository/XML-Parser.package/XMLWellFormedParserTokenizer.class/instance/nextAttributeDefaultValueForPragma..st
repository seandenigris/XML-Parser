tokenizing - dtd
nextAttributeDefaultValueForPragma: aPragma
	self skipSeparatorsReplacingParameterEntities.

	^ (aPragma isEmpty or: [aPragma first == $F]) "FIXED"
		ifTrue: [self nextAttributeValue]
		ifFalse: [''].
