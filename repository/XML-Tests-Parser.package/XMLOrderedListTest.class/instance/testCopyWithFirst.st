tests
testCopyWithFirst
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithFirst: self singleElement)
		copiedFrom: list
		equals: self listWithSingleElement.

	list := self listWithElements.
	self
		assertList: (list copyWithFirst: self newElement)
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listElements copyWithFirst: self newElement)).