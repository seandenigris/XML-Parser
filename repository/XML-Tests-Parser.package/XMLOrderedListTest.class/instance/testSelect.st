tests
testSelect
	| list |

	list := self listWithElements.
	self
		assertList: (list select: [:each | each ~= self singleElement])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listWithElements copyWithout: self singleElement)).