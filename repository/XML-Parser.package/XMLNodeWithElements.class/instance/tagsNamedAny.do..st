searching
tagsNamedAny: aStringCollection do: aOneArgumentBlock
	"Search for nodes with tag aString. When encountered evaluate aOneArgumentBlock"

	self recurse: [:each |
		(each isNamedAny: aStringCollection)
			ifTrue: [aOneArgumentBlock valueWithPossibleArgument: each]]