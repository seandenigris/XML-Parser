tests
testValidate
	self
		shouldnt: [self nodeClass new validate]
		raise: XMLValidationException