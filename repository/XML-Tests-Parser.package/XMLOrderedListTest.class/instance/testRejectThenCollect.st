tests
testRejectThenCollect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				reject: [:each | each = self singleElement]
				thenCollect: [:each | each asUppercase])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				((self listElements copyWithout: self singleElement)
					collect: [:each | each asUppercase])).