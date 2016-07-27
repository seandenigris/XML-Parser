tests
testSixth
	self
		assert: self emptyList sixth = self defaultValue;
		assert: self listWithElements sixth = self listElements sixth.