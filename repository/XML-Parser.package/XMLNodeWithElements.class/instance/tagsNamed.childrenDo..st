enumerating
tagsNamed: aName childrenDo: aOneArgumentBlock
	self deprecated: 'use #elementsAt:do: instead'.

	self elementsAt: aName do: aOneArgumentBlock.