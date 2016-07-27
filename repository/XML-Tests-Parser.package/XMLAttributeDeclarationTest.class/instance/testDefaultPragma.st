tests
testDefaultPragma
	self
		assert: self nodeClass new defaultPragma isEmpty;
		assert: (self nodeClass new defaultPragma: 'REQUIRED') defaultPragma = 'REQUIRED'