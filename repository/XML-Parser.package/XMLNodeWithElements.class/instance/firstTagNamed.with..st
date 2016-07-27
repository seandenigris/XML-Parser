searching
firstTagNamed: aName with: aBlock
	"Return the first encountered node with the specified tag that
	allows the block to evaluate to true. Pass the message on"

	^ self searchWith: [:each |
		(each isNamed: aName)
			and: [aBlock valueWithPossibleArgument: each]]