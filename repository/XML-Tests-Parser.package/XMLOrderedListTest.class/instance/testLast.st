tests
testLast
	self
		assert: self emptyList last = self defaultValue;
		assert: self listWithElements last = self listElements last.