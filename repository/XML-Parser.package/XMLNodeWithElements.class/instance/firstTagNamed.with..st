searching
firstTagNamed: aString with: aBlock
	"Return the first encountered node with the specified tag that
	allows the block to evaluate to true. Pass the message on"

	^ self recurseUntilTrue: [:each |
		(each isNamed: aString) and: [aBlock valueWithPossibleArgument: each]]