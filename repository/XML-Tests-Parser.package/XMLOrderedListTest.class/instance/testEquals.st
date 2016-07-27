tests
testEquals
	self
		assert: self emptyList = self emptyList;
		assert: self listWithSingleElement = self listWithSingleElement;
		assert: self listWithElements = self listWithElements;
		deny: self emptyList = self listWithSingleElement;
		deny: self listWithSingleElement = self emptyList;
		deny: self emptyList = self listWithElements;
		deny: self listWithElements = self emptyList;
		deny: self listWithElements = self listWithSingleElement;
		deny: self listWithSingleElement = self listWithElements