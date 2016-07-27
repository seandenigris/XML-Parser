tests
testCopyFromTo
	| list |

	list := self emptyList.
	self
		assertList: (list copyFrom: 1 to: 10)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithElements.
	self
		assertList: (list copyFrom: 1 to: list size)
		copiedFrom: list
		equals: self listWithElements.
	self
		assertList: (list copyFrom: 1 to: (list size / 2) asInteger)
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copyFrom: 1 to: (list size / 2) asInteger)).
	self
		assertList: (list copyFrom: 1 to: (list size * 2) asInteger)
		copiedFrom: list
		equals: self listWithElements.