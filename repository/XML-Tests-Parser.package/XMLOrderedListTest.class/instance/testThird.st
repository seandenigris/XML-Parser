tests
testThird
	self
		assert: self emptyList third = self defaultValue;
		assert: self listWithElements third = self listElements third.