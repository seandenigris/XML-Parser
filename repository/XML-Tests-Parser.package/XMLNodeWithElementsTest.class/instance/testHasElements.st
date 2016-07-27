tests
testHasElements
	self
		deny: self nodeClass new hasElements;
		assert: self newNodeWithElements hasElements;
		deny: self newNodeWithElements removeNodes hasElements