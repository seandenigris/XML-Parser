tests
testSystemID
	self
		assert: self nodeClass new systemID isEmpty;
		assert: (self nodeClass new systemID: 'test') systemID = 'test'