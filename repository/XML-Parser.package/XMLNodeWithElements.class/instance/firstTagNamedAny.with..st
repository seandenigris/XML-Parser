searching
firstTagNamedAny: aSymbolArray with: aBlock
	"Return the first encountered node with any of the specified tag names that
	allows the block to evaluate to true. Pass the message on"

	^ self recurseUntilTrue: [:each |
		(each isNamedAny: aSymbolArray) and: [aBlock valueWithPossibleArgument: each]]