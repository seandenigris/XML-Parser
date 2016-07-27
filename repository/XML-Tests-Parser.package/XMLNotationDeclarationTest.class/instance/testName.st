tests
testName
	self
		assert: self nodeClass new name isEmpty;
		assert: (self nodeClass new name: 'test') name = 'test'