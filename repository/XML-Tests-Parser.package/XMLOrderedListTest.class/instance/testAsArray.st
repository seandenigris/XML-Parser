tests
testAsArray
	self
		assert: self emptyList asArray = #();
		assert: self listWithElements asArray = self listElements asArray