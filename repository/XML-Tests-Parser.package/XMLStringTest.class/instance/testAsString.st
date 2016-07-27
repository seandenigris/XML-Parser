tests
testAsString
	self
		assert: self nodeClass new asString isEmpty;
		assert: (self nodeClass string: 'test') asString = 'test'