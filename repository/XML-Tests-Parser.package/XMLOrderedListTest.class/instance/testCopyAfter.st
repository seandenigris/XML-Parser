tests
testCopyAfter
	| list |

	list := self listWithElements.
	list do: [:each |
		self
			assertList: (list copyAfter: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements copyAfter: each)).
		self assert: (self emptyList copyAfter: each) = self emptyList].