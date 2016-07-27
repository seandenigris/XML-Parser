tests
testHash
	self
		assert: self emptyList hash = self emptyList hash;
		assert: self listWithSingleItem hash = self listWithSingleItem hash;
		assert: self listWithItems hash = self listWithItems hash