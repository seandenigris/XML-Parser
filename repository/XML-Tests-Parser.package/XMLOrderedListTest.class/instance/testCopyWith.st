tests
testCopyWith
	| list |

	list := self emptyList.
	self
		assertList: (list copyWith: self singleElement)
		copiedFrom: list
		equals: self listWithSingleElement.

	list := self listWithElements.
	self
		assertList: (list copyWith: self newElement)
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copyWith: self newElement)).