searching
tagsNamed: aName childrenDo: aOneArgumentBlock
	"Evaluate aOneArgumentBlock for all children who match"

	self deprecated: 'use #elementsAt:do: instead'.

	self elementsAt: aName do: aOneArgumentBlock.