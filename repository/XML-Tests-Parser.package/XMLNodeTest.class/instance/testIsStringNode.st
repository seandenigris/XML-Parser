tests
testIsStringNode
	self
		deny: self nodeClass new isStringNode;
		deny: (self nodeClass new isStringNode: '').