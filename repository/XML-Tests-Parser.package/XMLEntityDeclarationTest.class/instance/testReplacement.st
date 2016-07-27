tests
testReplacement
	self
		assert: self nodeClass new replacement isEmpty;
		assert: (self nodeClass new replacement: 'test') replacement = 'test'