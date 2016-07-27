assertions
assertNodeHasNoChildren: aNode
	super assertNodeHasNoChildren: aNode.
	self assertNodeHasNoContentNodes: aNode