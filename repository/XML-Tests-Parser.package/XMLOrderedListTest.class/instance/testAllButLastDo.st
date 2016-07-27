tests
testAllButLastDo
	self
		should: [:block | self emptyList allButLastDo: block]
		enumerate: #().
	self
		should: [:block | self listWithElements allButLastDo: block]
		enumerate: self listElements allButLast.