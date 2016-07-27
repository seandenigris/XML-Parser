tests
testCopyReplaceFromToWith
	| list |

	list := self emptyList.
	self
		assertList: (list copyReplaceFrom: 1 to: 1 with: self emptyList)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithElements.
	self
		assertList: (list copyReplaceFrom: 1 to: list size with: self listElements reversed)
		copiedFrom: list
		equals: (self listClass newFrom: self listElements reversed).
	self
		assertList: (list copyReplaceFrom: 0 to: 1 with: self listWithElements)
		copiedFrom: list
		equals: (self listClass newFrom: self listElements, self listElements).
	self
		assertList: (list copyReplaceFrom: list size + 1 to: list size * 2 with: self listWithElements)
		copiedFrom: list
		equals: (self listClass newFrom: self listElements, self listElements).