searching
tagsNamed: aString childrenDo: aOneArgumentBlock
	"Evaluate aOneArgumentBlock for all children who match"

	self deprecated: 'use #elementsAt:do: instead'.

	self elementsAt: aString do: aOneArgumentBlock.