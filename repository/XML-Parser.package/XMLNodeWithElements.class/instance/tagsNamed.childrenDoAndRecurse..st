searching
tagsNamed: aString childrenDoAndRecurse: aOneArgumentBlock
	"Evaluate aOneArgumentBlock for all children who match and recurse"

	self deprecated: 'use "node elementsDo: [:each | each tagsNamed: aName do: [...]]" instead'.

	self elementsDo: [:each | each tagsNamed: aString do: aOneArgumentBlock]