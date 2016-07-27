tests
testCopyWithoutAll
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithoutAll: self listElements)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithElements.
	self
		assertList: (list copyWithoutAll: (Array with: self absentElement))
		copiedFrom: list
		equals: self listWithElements.
	self
		assertList: (list copyWithoutAll: self listElements)
		copiedFrom: list
		equals: self emptyList.