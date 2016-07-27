tests
testLastOrNil
	self
		assert: self emptyList lastOrNil isNil;
		assert: self listWithSingleElement lastOrNil = self singleElement;
		assert: self listWithElements lastOrNil = self listElements last