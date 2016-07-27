tests
testCopyUpTo
	| list |

	list := self listWithElements.
	list do: [:each |
		self
			assertList: (list copyUpTo: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements copyUpTo: each))].
	self
		assertList: (list copyUpTo: self absentElement)
		copiedFrom: list
		equals: self listWithElements.