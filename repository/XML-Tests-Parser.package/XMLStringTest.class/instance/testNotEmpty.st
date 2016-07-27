tests
testNotEmpty
	self
		deny: self nodeClass new notEmpty;
		assert: (self nodeClass string: ' ') notEmpty