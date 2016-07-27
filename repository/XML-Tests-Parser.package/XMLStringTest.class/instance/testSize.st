tests
testSize
	self
		assert: self nodeClass new size = 0;
		assert: (self nodeClass string: 'test') size = 4