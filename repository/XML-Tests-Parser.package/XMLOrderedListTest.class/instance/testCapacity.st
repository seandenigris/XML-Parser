tests
testCapacity
	self hasCapacity
		ifTrue: [
			self
				assert: self emptyList capacity >= 0;
				assert: self listWithSingleElement capacity >= 1;
				assert: self listWithElements capacity >= self listElements size]