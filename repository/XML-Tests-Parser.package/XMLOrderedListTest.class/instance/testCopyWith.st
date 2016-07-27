tests
testCopyWith
	self assert: (self emptyList copyWith: self singleElement) = self listWithSingleElement.