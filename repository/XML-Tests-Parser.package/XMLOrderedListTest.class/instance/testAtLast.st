tests
testAtLast
	self
		assert: (self emptyList atLast: 1) = self defaultValue;
		assert: (self listWithSingleElement atLast: 1) = self singleElement;
		assert: (self listWithElements atLast: 2) = (self listElements atLast: 2);
		assert: (self listWithElements atLast: self listWithElements size + 1) = self defaultValue.