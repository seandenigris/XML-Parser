tests
testCopyWithout
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithout: self singleElement)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithElements.
	self
		assertList: (list copyWithout: self singleElement)
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copyWithout: self singleElement)).