tests
testDefaultValue
	self
		assert: self nodeClass new defaultValue isEmpty;
		assert: (self nodeClass new defaultValue: 'test') defaultValue = 'test'