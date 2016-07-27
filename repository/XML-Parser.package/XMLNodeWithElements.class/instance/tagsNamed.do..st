searching
tagsNamed: aString do: aOneArgumentBlock
	"Search for nodes with tag aString. When encountered evaluate aOneArgumentBlock"

	self recurse: [:each |
		(each isNamed: aString)
			ifTrue: [aOneArgumentBlock valueWithPossibleArgument: each]]