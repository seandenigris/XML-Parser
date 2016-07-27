tests
testVersion
	self
		assert: self nodeClass new version isNil;
		assert: (self nodeClass new version: 1.0) version = 1.0