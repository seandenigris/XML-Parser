tests
testConcatenation
	self
		assert: (self emptyList, self emptyList) = self emptyList;
		assert: (self listWithElements, self emptyList) = self listWithElements;
		assert: (self emptyList, self listWithElements) = self listWithElements;
		assert:
			(self listWithElements, self listWithElements) =
				(self listClass newFrom: (self listElements, self listElements)).