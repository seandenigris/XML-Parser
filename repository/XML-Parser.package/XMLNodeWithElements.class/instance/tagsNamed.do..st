searching
tagsNamed: aName do: aOneArgumentBlock
	"Search for nodes with tag aName. When encountered evaluate aOneArgumentBlock"

	self recurse: [:each |
		(each isNamed: aName)
			ifTrue: [aOneArgumentBlock valueWithPossibleArgument: each]]