tests
testValue
	self
		assert: self nodeClass new value isEmpty;
		assert: (self nodeClass new value: 'test') value = 'test'