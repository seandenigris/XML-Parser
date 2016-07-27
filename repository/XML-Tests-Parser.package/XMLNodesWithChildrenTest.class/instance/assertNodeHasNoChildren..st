assertions
assertNodeHasNoChildren: aNode
	self
		deny: aNode hasChildren;
		assert: aNode nodes isEmpty;
		assert: aNode firstNode isNil;
		assert: aNode lastNode isNil