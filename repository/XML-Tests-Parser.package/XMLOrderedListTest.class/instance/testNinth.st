tests
testNinth
	self
		assert: self emptyList ninth = self defaultValue;
		assert: self listWithElements ninth = (self listElements at: 9).