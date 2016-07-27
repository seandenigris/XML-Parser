tests
testContentString
	super testContentString.
	self
		assert: (self nodeClass string: 'test') contentString = 'test';
		assert: ((self nodeClass new) contentString: 'test') contentString = 'test'.