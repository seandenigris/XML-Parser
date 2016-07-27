tests
testDo
	self
		should: [:block | self emptyList do: block] enumerate: #();
		should: [:block | self listWithElements do: block] enumerate: self listElements