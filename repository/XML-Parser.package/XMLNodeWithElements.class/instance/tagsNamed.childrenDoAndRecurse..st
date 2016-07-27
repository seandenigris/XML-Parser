enumerating
tagsNamed: aName childrenDoAndRecurse: aOneArgumentBlock
	self deprecated: 'use "node elementsDo: [:each | each allElementsNamed: aName do: [...]]" instead'.

	self elementsDo: [:each | each allElementsNamed: aName do: aOneArgumentBlock].