enumerating
elementsAndContentsDo: aBlock
	self deprecated: 'use contentNodesDo: instead'.

	self contentNodesDo: aBlock.