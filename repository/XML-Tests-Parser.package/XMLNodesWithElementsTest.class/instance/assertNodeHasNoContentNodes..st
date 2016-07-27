assertions
assertNodeHasNoContentNodes: aNode
	self
		deny: aNode hasContentNodes;
		assert: aNode contentNodes isEmpty;
		assert: aNode contentString isEmpty;
		assertNodeHasNoElements: aNode;
		assertNodeHasNoStringNodes: aNode.