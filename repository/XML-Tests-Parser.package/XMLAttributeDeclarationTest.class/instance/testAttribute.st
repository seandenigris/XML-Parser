tests
testAttribute
	self
		assert: self nodeClass new attribute isEmpty;
		assert: (self nodeClass new attribute: 'test') attribute = 'test'