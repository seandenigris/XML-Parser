tests
testCopyUpToLast
	| list |

	list := self listClass newFrom: self listElements, self listElements.
	list do: [:each |
		self
			assertList: (list copyUpToLast: each)
			copiedFrom: list
			equals:
				(self listClass newFrom:
					(self listElements, self listElements copyUpToLast: each))].
	self
		assertList: (list copyUpToLast: self absentElement)
		copiedFrom: list
		equals: (self listClass newFrom: self listElements, self listElements).