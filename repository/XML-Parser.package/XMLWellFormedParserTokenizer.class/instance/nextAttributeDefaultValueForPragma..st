tokenizing - dtd
nextAttributeDefaultValueForPragma: aPragma
	self skipSeparatorsReplacingParameterEntities.

	(aPragma isEmpty or: [aPragma first == $F]) "FIXED"
		ifTrue: [ | previousContext attributeValue |
			previousContext := context.
			context := context contentContext.
			attributeValue := self nextAttributeValue.
			context := previousContext.
			^ attributeValue]
		ifFalse: [^ ''].
