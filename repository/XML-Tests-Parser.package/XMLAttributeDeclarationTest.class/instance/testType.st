tests
testType
	self
		assert: self nodeClass new type isEmpty;
		assert: (self nodeClass new type: 'CDATA') type = 'CDATA'