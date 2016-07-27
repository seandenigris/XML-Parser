tests
testReject
	| list |

	list := self listWithElements.
	self
		assertList: (list reject: [:each | each = self singleElement])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listWithElements copyWithout: self singleElement)).