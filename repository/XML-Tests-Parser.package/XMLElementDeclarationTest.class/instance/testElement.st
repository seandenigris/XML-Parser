tests
testElement
	self
		assert: self nodeClass new element isEmpty;
		assert: (self nodeClass new element: 'test') element = 'test'