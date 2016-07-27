tests
testNamed
	self
		assert: (self nodeClass named: 'test') name = 'test';
		should: [self nodeClass named: 'undeclared:test'] raise: XMLNamespaceException