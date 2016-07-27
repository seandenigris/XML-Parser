searching
recurseUntilTrue: aBlock
	"See superclass version."

	(aBlock valueWithPossibleArgument: self)
		ifTrue: [^ self].

	^ super recurseUntilTrue: aBlock.