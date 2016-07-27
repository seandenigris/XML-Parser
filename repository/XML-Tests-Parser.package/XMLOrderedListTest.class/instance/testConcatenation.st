tests
testConcatenation
	| list |

	list := self emptyList.
	self
		assertList: (list, self emptyList) copiedFrom: list equals: self emptyList;
		assertList: (list, self listWithElements) copiedFrom: list equals: self listWithElements.

	list := self listWithElements.
	self assertList: (list, self emptyList) copiedFrom: list equals: self listWithElements.
	self
		assertList: (list, self listWithElements)
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements, self listElements)).