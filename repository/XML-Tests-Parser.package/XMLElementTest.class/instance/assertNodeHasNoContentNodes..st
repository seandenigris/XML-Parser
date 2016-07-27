assertions
assertNodeHasNoContentNodes: aNode
	super assertNodeHasNoContentNodes: aNode.
	self assertNodeHasNoStringNodes: aNode.