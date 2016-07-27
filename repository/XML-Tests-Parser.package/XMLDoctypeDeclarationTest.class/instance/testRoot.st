tests
testRoot
	self
		assert: self nodeClass new root isEmpty;
		assert: (self nodeClass new root: 'test') root = 'test'