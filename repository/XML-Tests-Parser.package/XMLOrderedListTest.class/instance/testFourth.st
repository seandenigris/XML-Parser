tests
testFourth
	self
		assert: self emptyList fourth = self defaultValue;
		assert: self listWithElements fourth = self listElements fourth.