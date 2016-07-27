tests
testNdata
	self
		assert: self nodeClass new ndata isEmpty;
		assert: (self nodeClass new ndata: 'test') ndata = 'test'