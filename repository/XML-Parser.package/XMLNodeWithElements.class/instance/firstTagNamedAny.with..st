searching
firstTagNamedAny: aNameArray with: aBlock
	"Return the first encountered node with any of the specified tag names that
	allows the block to evaluate to true. Pass the message on"

	^ self searchWith: [:each |
		(each isNamedAny: aNameArray)
			and: [aBlock valueWithPossibleArgument: each]]