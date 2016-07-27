tests
testFifth
	self
		assert: self emptyList fifth = self defaultValue;
		assert: self listWithElements fifth = self listElements fifth.