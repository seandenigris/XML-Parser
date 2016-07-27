tests
testEncoding
	self
		assert: self nodeClass new encoding = 'UTF-8';
		assert: ((self nodeClass new encoding: 'UTF-16') encoding) = 'UTF-16'.