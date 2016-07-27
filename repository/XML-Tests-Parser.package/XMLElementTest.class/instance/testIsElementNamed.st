tests
testIsElementNamed
	self
		assert: ((self nodeClass named: 'one') isElementNamed: 'one');
		deny: ((self nodeClass named: 'two') isElementNamed: 'one')