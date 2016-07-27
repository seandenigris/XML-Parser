tests
testIsStandalone
	self
		deny: self nodeClass new isStandalone;
		assert: (self nodeClass new isStandalone: true) isStandalone