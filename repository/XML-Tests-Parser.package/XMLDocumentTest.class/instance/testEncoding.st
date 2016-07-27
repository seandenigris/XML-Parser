tests
testEncoding
	self
		assert: self nodeClass new encoding isEmpty;
		assert: ((self nodeClass new encoding: 'UTF-8') encoding) = 'UTF-8'.