tests
testReverseDo
	self
		should: [:block | self emptyList reverseDo: block] enumerate: #();
		should: [:block | self listWithElements reverseDo: block] enumerate: self listElements reversed.