tests
testSize
	self
		assert: self emptyList size isZero;
		assert: self listWithSingleElement size = 1;
		assert: self listWithElements size = self listElements size