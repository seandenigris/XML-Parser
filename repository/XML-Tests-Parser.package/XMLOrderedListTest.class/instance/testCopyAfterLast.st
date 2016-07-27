tests
testCopyAfterLast
	| list |

	list := self listWithElements.
	list do: [:each |
		self
			assertList: (list copyAfterLast: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements copyAfterLast: each)).
		self assert: (self emptyList copyAfterLast: each) = self emptyList].