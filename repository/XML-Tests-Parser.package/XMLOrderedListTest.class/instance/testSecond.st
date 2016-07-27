tests
testSecond
	self
		assert: self emptyList second = self defaultValue;
		assert: self listWithElements second = (self listElements at: 2).