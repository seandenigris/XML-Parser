tests
testAllButFirstDo
	self
		should: [:block | self emptyList allButFirstDo: block]
		enumerate: #().
	self
		should: [:block | self listWithElements allButFirstDo: block]
		enumerate: self listElements allButFirst.