enumerating
tagsNamed: aName do: aBlock
	self deprecated: 'use #allElementsNamed:do: instead'.

	self allElementsNamed: aName do: aBlock.