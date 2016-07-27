tests
testEighth
	self
		assert: self emptyList eighth = self defaultValue;
		assert: self listWithElements eighth = self listElements eighth.