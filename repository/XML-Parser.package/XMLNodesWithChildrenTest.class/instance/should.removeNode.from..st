assertions
should: aBlock removeNode: aNode from: aParent
	self should: aBlock removeNodes: (Array with: aNode) from: aParent