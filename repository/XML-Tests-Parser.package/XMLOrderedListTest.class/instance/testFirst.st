tests
testFirst
	self
		assert: self emptyList first = self defaultValue;
		assert: self listWithElements first = self listElements first.