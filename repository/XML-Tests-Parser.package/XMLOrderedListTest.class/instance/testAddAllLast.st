tests
testAddAllLast
	| list |

	list := self listWithSingleElement.
	self
		assert: (list addAllLast: self listElements allButFirst) = self listElements allButFirst;
		assert: list = self listWithElements.