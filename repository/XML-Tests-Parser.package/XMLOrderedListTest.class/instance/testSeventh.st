tests
testSeventh
	self
		assert: self emptyList seventh = self defaultValue;
		assert: self listWithElements seventh = (self listElements at: 7).