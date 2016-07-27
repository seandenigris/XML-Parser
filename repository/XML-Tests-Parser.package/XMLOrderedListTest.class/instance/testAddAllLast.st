tests
testAddAllLast
	| list |

	list := self emptyList.
	self
		assert: (list addAllLast: self listElements) = self listElements;
		assert: list = self listWithElements;
		assert: (list addAllLast: self listElements reversed) = self listElements reversed;
		assert: list = (self listClass newFrom: self listElements, self listElements reversed).