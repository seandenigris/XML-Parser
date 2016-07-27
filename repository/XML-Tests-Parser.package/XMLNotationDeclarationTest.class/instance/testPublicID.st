tests
testPublicID
	self
		assert: self nodeClass new publicID isEmpty;
		assert: (self nodeClass new publicID: 'test') publicID = 'test'