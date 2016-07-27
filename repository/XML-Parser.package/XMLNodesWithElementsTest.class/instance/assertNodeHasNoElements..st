assertions
assertNodeHasNoElements: aNode
	self
		deny: aNode hasElements;
		assert: aNode elements isEmpty;
		assert: aNode firstElement isNil;
		assert: aNode lastElement isNil