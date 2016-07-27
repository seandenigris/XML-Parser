tests
testAddAll
	| list |

	list := self emptyList.
	self
		deny: list = self listWithElements;
		assert: (list addAll: self listElements) = self listElements;
		assert: list = self listWithElements.