tests
testAnyOne
	self
		assert: self emptyList anyOne = self defaultValue;
		assert: self listWithElements anyOne = self listElements first.