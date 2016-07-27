tests
testIsElementNamedAny
	self
		assert: ((self nodeClass named: 'one') isElementNamedAny: #('two' 'one' 'three'));
		deny: ((self nodeClass named: 'two') isElementNamedAny: #('three' 'four' 'five'))