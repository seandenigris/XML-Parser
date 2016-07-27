tests
testIsEmpty
	self
		assert: self nodeClass new isEmpty;
		deny: (self nodeClass string: ' ') isEmpty