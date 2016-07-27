tests
testRemoveFirst
	| list |

	list := self listWithElements.
	self
		assert: list removeFirst = self listWithElements first;
		assert: list = self listWithElements allButFirst;
		should: [self emptyList removeFirst] raise: Error.