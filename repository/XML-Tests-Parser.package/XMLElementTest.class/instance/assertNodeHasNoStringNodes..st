assertions
assertNodeHasNoStringNodes: aNode
	self
		deny: aNode hasStringNodes;
		assert: aNode stringNodes isEmpty;
		assert: aNode strings isEmpty
	