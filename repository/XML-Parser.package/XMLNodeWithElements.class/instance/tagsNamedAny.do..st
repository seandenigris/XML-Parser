searching
tagsNamedAny: aNameCollection do: aOneArgumentBlock
	"Search for nodes with tag aName. When encountered evaluate aOneArgumentBlock"

	self recurse: [:each |
		(each isNamedAny: aNameCollection)
			ifTrue: [aOneArgumentBlock valueWithPossibleArgument: each]]