enumerating
tagsNamed: aName contentsDo: aBlock
	self deprecated: 'use "node allElementsNamed: aName do: [:each | each stringNodes...]" instead'.

	self allElementsNamed: aName do: [:each | each stringNodesDo: aBlock].